// Include the most common headers from the C standard library
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <string>

// Include the main libnx system header, for Switch development
#include <switch.h>
#include <json-c/json.h>
#include <curl/curl.h>

#include "discord.hpp"
#include "logging.hpp"
#include "utilities.hpp"

// might rewrite this sysmodule in swift again.
// i didnt need to rewrite in c++ but i ran out of ideas to fix crashing in swift
// but it was just a big struct being put on stack in swift. 

// Size of the inner heap (adjust as necessary).
#define INNER_HEAP_SIZE 0x80000

#ifdef __cplusplus
extern "C" {
#endif

// Sysmodules should not use applet*.
u32 __nx_applet_type = AppletType_None;
SslServiceType __nx_ssl_service_type = SslServiceType_System;

// Sysmodules will normally only want to use one FS session.
u32 __nx_fs_num_sessions = 1;


// Newlib heap configuration function (makes malloc/free work).
void __libnx_initheap(void)
{
    static u8 inner_heap[INNER_HEAP_SIZE];
    extern void* fake_heap_start;
    extern void* fake_heap_end;

    // Configure the newlib heap.
    fake_heap_start = inner_heap;
    fake_heap_end   = inner_heap + sizeof(inner_heap);
}

// Service initialization.
void __appInit(void)
{
    Result rc;

    // Open a service manager session.
    rc = smInitialize();
    if (R_FAILED(rc))
        diagAbortWithResult(MAKERESULT(Module_Libnx, LibnxError_InitFail_SM));

    // Retrieve the current version of Horizon OS.
    rc = setsysInitialize();
    if (R_SUCCEEDED(rc)) {
        SetSysFirmwareVersion fw;
        rc = setsysGetFirmwareVersion(&fw);
        if (R_SUCCEEDED(rc))
            hosversionSet(MAKEHOSVERSION(fw.major, fw.minor, fw.micro)); 
        setsysExit();
    }

    // Disable this if you don't want to use the filesystem.
    rc = fsInitialize();
    if (R_FAILED(rc))
        diagAbortWithResult(MAKERESULT(Module_Libnx, LibnxError_InitFail_FS));

    timeInitialize(); // time() for log timestamps, the refresh timer and token expiry
    nifmInitialize(NifmServiceType_System);

    // Disable this if you don't want to use the SD card filesystem.
    fsdevMountSdmc();
    initLog();

    // Add other services you want to use here.
    SocketInitConfig sockConf = {
        .tcp_tx_buf_size = 0x800,
        .tcp_rx_buf_size = 0x1000,
        .tcp_tx_buf_max_size = 0x2EE0,
        .tcp_rx_buf_max_size = 0x2EE0,

        .udp_tx_buf_size = 0x1000,
        .udp_rx_buf_size = 0x1000,

        .sb_efficiency = 4,

        .num_bsd_sessions = 3,
        .bsd_service_type = BsdServiceType_System,
    };
    rc = socketInitialize(&sockConf);
    if (R_FAILED(rc))
        writeToLog("[SwitchRPC] Warning: socketInitialize failed with code 0x%08X. This might be due to memory constraints. Network features will not work. Maybe disable other sysmodules?", rc);
    curl_global_init(CURL_GLOBAL_DEFAULT);
	
	pmdmntInitialize();
	nsInitialize();
	setInitialize();
	pscmInitialize();

    // Close the service manager session.
    smExit();
}

// Service deinitialization.
void __appExit(void)
{
    // stop the psc thread first, we're leaving anyway
    g_pscThreadRun = false;
    if (g_pscReady) {
        threadWaitForExit(&g_pscThread);
        threadClose(&g_pscThread);
        pscPmModuleFinalize(&g_pscModule);
        pscPmModuleClose(&g_pscModule);
    }
    pscmExit();

    discordDeleteHeadlessSession();
    writeToLog("[SwitchRPC] Sysmodule exiting. Goodbye!");

    curl_global_cleanup();

    socketExit();
    setExit();
    nsExit();
    pmdmntExit();
    nifmExit();
    timeExit();

    // Close extra services you added to __appInit here.
    fsdevUnmountAll(); // Disable this if you don't want to use the SD card filesystem.
    fsExit(); // Disable this if you don't want to use the filesystem.
}

#ifdef __cplusplus
}
#endif


// logged in = the config app left a refresh token on the sd card
static bool isLoggedIn() {
    FILE* f = fopen("sdmc:/config/switchrpc_token", "r");
    if (f) { fclose(f); return true; }
    return false;
}

const int REFRESH_INTERVAL = 15 * 60;

int main(int argc, char* argv[])
{
    writeToLog("[SwitchRPC] Sysmodule started successfully.");

    AppInfo lastInfo = {0};
    u64 lastUpdateRaw = 0;
    bool wasLoggedIn = false;
    u64 accumulatedAwake = 0; // seconds of awake playtime banked for the current game
    u64 chunkStartRaw = 0;    // raw local seconds when the current awake play chunk started
    u64 chunkStartCorrected = 0; // corrected absolute timestamp for Discord session start

    // Start by cleaning up stale sessions
    discordCleanupStaleSessions();

    waitForNetworkReady();

    // register with psc and start the thread that watches for sleep/wake
    {
        ueventCreate(&g_pscWakeMain, true);
        ueventCreate(&g_sleepPrepDone, true);
        static const u32 pscDeps[] = { PscPmModuleId_Fs, PscPmModuleId_Nifm };
        Result prc = pscmGetPmModule(&g_pscModule, (PscPmModuleId)0x5250, pscDeps,
                                     sizeof(pscDeps) / sizeof(pscDeps[0]), true);
        if (R_SUCCEEDED(prc)) {
            if (R_SUCCEEDED(threadCreate(&g_pscThread, pscThreadFunc, NULL, NULL, 0x4000, 0x2C, -2))) {
                threadStart(&g_pscThread);
                g_pscReady = true;
                writeToLog("[SwitchRPC] PSC power-state monitoring active.");
            } else {
                // no ack thread = we'd stall power transitions, so unregister
                pscPmModuleFinalize(&g_pscModule);
                pscPmModuleClose(&g_pscModule);
                writeToLog("[SwitchRPC] Warning: could not start PSC thread; sleep detection disabled.");
            }
        } else {
            writeToLog("[SwitchRPC] Warning: pscmGetPmModule failed (0x%08X); sleep detection disabled.", prc);
        }
    }

    while (true) {
        // just woke up - resume the same game, continuing its playtime timer
        // (the sleep period is excluded, see the sleep handler below)
        if (g_wokeFromSleep) {
            g_wokeFromSleep = false;
            g_asleep = false;
            waitForNetworkReady();
            discordCleanupStaleSessions();

            if (lastInfo.tid != 0) {
                writeToLog("[SwitchRPC] Wake from sleep (PSC). Resuming session for TID: %016llX", (unsigned long long)lastInfo.tid);
                chunkStartRaw = getRawNowSec();
                chunkStartCorrected = getCorrectedNowSec();
                u64 displayStart = chunkStartCorrected - accumulatedAwake; // move start forward to skip the sleep
                discordCreateHeadlessSession(lastInfo.tid, std::string(lastInfo.title_name), displayStart, false);
                lastUpdateRaw = chunkStartRaw;
            }
        }

        // user hit "log out" in the config app (token file is gone) - drop the
        // session and stop pushing until they log back in
        bool loggedIn = isLoggedIn();
        if (wasLoggedIn && !loggedIn && !g_asleep) {
            writeToLog("[SwitchRPC] Logged out, clearing presence.");
            discordLogout();
            lastInfo = {0};
            lastUpdateRaw = 0;
        }
        wasLoggedIn = loggedIn;

        // asleep = presence already gone, don't poll or we'd just recreate it
        // right before the console freezes
        if (!g_asleep && loggedIn) {
            AppInfo info = {0};
            Result rc = get_app_info(&info);

            bool is_game_running = R_SUCCEEDED(rc) && info.tid != 0;

            if (is_game_running) {
                // user opened a game or switched a game or switched from home menu to game (tid changed)
                if (info.tid != lastInfo.tid) {
                    writeToLog("[SwitchRPC] Game state changed! New TID: %016llX, Name: %s. Previous TID: %016llX",
                               (unsigned long long)info.tid, info.title_name, (unsigned long long)lastInfo.tid);

                    // kill the previous game's session first, otherwise they stack
                    // up on discord's side (and the new game gets a fresh timer)
                    if (lastInfo.tid != 0) {
                        discordDeleteHeadlessSession();
                    }

                    lastInfo = info;
                    accumulatedAwake = 0;
                    chunkStartRaw = getRawNowSec();
                    chunkStartCorrected = getCorrectedNowSec();
                    lastUpdateRaw = chunkStartRaw;
                    waitForNetworkReady();
                    discordCleanupStaleSessions();
                    // create a new session for the new game, starting its timer from now

                    discordCreateHeadlessSession(info.tid, std::string(info.title_name), chunkStartCorrected, false);
                }
                // the same game is still open. refresh.
                else {
                    u64 currentTimeRaw = getRawNowSec();
                    // check time interval
                    if (currentTimeRaw - lastUpdateRaw >= REFRESH_INTERVAL) {
                        writeToLog("[SwitchRPC] Periodic session refresh triggered for TID: %016llX", (unsigned long long)info.tid);
                        lastUpdateRaw = currentTimeRaw;

                        // refresh session, keeping the same elapsed start
                        u64 displayStart = chunkStartCorrected - accumulatedAwake;
                        discordCreateHeadlessSession(info.tid, std::string(info.title_name), displayStart, true);
                    }
                }
            } else {
                // user isn't in a game. if we had a session before, delete it since the game closed, and reset lastInfo.
                if (lastInfo.tid != 0) {
                    writeToLog("[SwitchRPC] Game closed or returned to Home Menu. Clearing session for TID: %016llX", (unsigned long long)lastInfo.tid);
                    waitForNetworkReady();

                    lastInfo = {0};
                    lastUpdateRaw = 0;
                    accumulatedAwake = 0;
                    chunkStartRaw = 0;
                    chunkStartCorrected = 0;

                    discordDeleteHeadlessSession();
                }
            }
        }

        // wait ~10s, or wake early if psc pokes us
        waitSingle(waiterForUEvent(&g_pscWakeMain), 10ULL * 1000 * 1000 * 1000);

        // about to sleep, wifi still up - kill the presence now before we freeze,
        // stop polling until we wake, then let the psc thread ack
        if (g_sleepPending) {
            g_sleepPending = false;
            writeToLog("[SwitchRPC] Sleep imminent (PSC). Clearing Discord presence before sleep.");

            // bank the awake time played so far so the timer resumes minus sleep.
            // keep lastInfo so we know which game to resume on wake.
            if (lastInfo.tid != 0) {
                accumulatedAwake += getRawNowSec() - chunkStartRaw;
            }

            discordDeleteHeadlessSession();
            g_asleep = true;

            ueventSignal(&g_sleepPrepDone);
        }
    }

    return 0;
}
