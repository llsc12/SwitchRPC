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

// current process/title utilities

// struct with tid and title name
typedef struct {
	u64 pid;          ///< process id
	u64 tid;          ///< title id
	char title_name[513];  ///< Title name 512 + 1 for null terminator
} AppInfo;


// Return 0 on success, non-zero on error (int holds the libnx Result)
Result get_app_info(AppInfo *info) {
	u64 *out_pid = &info->pid;
	u64 *out_tid = &info->tid;
	
	Result rc;
	
	rc = pmdmntGetApplicationProcessId(out_pid);
	if (R_FAILED(rc)) return rc;
	
	rc = pmdmntGetProgramId(out_tid, *out_pid);
	if (R_FAILED(rc)) return rc;
	
	NsApplicationControlData* appControlData = (NsApplicationControlData*)malloc(sizeof(NsApplicationControlData));
	if (appControlData == NULL) return MAKERESULT(Module_Libnx, LibnxError_OutOfMemory);
	
	memset(appControlData, 0, sizeof(NsApplicationControlData));
    u64 appControlDataSize = sizeof(NsApplicationControlData);
	NacpLanguageEntry *languageEntry;
	
    Result res = 0;
	if (R_SUCCEEDED(nsGetApplicationControlData(NsApplicationControlSource_Storage, *out_tid, appControlData, appControlDataSize, &appControlDataSize))) {
		if (R_SUCCEEDED(nacpGetLanguageEntry(&appControlData->nacp, &languageEntry))) {
			if (languageEntry != NULL) {
				strncpy(info->title_name, languageEntry->name, sizeof(info->title_name) - 1);
				info->title_name[sizeof(info->title_name) - 1] = '\0';
			} else {
                res = MAKERESULT(Module_Libnx, LibnxError_NotFound);
			}
		} else {
            res = MAKERESULT(Module_Libnx, LibnxError_NotFound);
		}
	} else {
        res = MAKERESULT(Module_Libnx, LibnxError_NotFound);
	}

	free(appControlData);

    return res;
}


// sleep/wake via psc.
// clocks are useless here - the whole sysmodule is frozen while asleep so time()
// and the system tick don't move. psc gives us a real event instead. the
// ReadySleep one fires *before* we sleep while wifi is still up, which is the
// only moment we can kill the discord session so it doesn't hang around during
// sleep. can't do the network call on this thread (tiny stack, and acking late
// would stall the sleep), so it just pokes the main thread and waits.
// id 0x5250 is a random unused id (system ones stop at 127), deps {fs, nifm} so
// we go down before them on sleep and come back after them on wake.
static PscPmModule g_pscModule;
static Thread g_pscThread;
static bool g_pscReady = false;
static volatile bool g_pscThreadRun = true;
static volatile bool g_wokeFromSleep = false;
static volatile bool g_sleepPending = false;
static volatile bool g_asleep = false;
static UEvent g_pscWakeMain;   // psc -> main: "wake up and check your flags"
static UEvent g_sleepPrepDone; // main -> psc: "presence gone, ok to sleep"

static void pscThreadFunc(void*) {
    while (g_pscThreadRun) {
        // 1s timeout so we can bail out on shutdown
        if (R_FAILED(eventWait(&g_pscModule.event, 1000000000ULL))) continue;

        PscPmState state;
        u32 flags = 0;
        if (R_FAILED(pscPmModuleGetRequest(&g_pscModule, &state, &flags))) continue;

        if (state == PscPmState_ReadySleep) {
            // let the main thread kill the presence while wifi is still up, wait
            // a bit for it, then ack - never block the sleep for long
            g_sleepPending = true;
            ueventSignal(&g_pscWakeMain);
            waitSingle(waiterForUEvent(&g_sleepPrepDone), 4000000000ULL); // up to 4s
        } else if (state == PscPmState_Awake) {
            g_wokeFromSleep = true;
            ueventSignal(&g_pscWakeMain);
        }

        pscPmModuleAcknowledge(&g_pscModule, state);
    }
}


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

    // timeInitialize();
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
    // timeExit();

    // Close extra services you added to __appInit here.
    fsdevUnmountAll(); // Disable this if you don't want to use the SD card filesystem.
    fsExit(); // Disable this if you don't want to use the filesystem.
}

#ifdef __cplusplus
}
#endif


const int REFRESH_INTERVAL = 15 * 60; 

int main(int argc, char* argv[])
{
    writeToLog("[SwitchRPC] Sysmodule started successfully.");

    AppInfo lastInfo = {0};
    time_t last_update_time = 0;

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
        // just woke up - rebuild presence for whatever's running, fresh timer
        if (g_wokeFromSleep) {
            g_wokeFromSleep = false;
            g_asleep = false;
            writeToLog("[SwitchRPC] Wake from sleep (PSC). Waiting for network, then rebuilding session.");
            waitForNetworkReady();

            discordDeleteHeadlessSession();
            discordCleanupStaleSessions();

            lastInfo = {0};
            last_update_time = 0;
        }

        // asleep = presence already gone, don't poll or we'd just recreate it
        // right before the console freezes
        if (!g_asleep) {
            AppInfo info = {0};
            Result rc = get_app_info(&info);

            bool is_game_running = R_SUCCEEDED(rc) && info.tid != 0;

            if (is_game_running) {
                // user opened a game or switched a game or switched from home menu to game (tid changed)
                if (info.tid != lastInfo.tid) {
                    // if lastInfo.tid != 0, we already had a session running, so we include the token to update it.
                    // if lastInfo.tid == 0, it's a brand new session, so no token is included.
                    bool has_existing_session = (lastInfo.tid != 0);

                    writeToLog("[SwitchRPC] Game state changed! New TID: %016llX, Name: %s. Previous TID: %016llX",
                               (unsigned long long)info.tid, info.title_name, (unsigned long long)lastInfo.tid);

                    lastInfo = info;
                    last_update_time = time(NULL);

                    // create/update session.
                    discordCreateHeadlessSession(info.tid, std::string(info.title_name), has_existing_session);
                }
                // the same game is still open. refresh.
                else {
                    time_t current_time = time(NULL);
                    // check time interval
                    if (current_time - last_update_time >= REFRESH_INTERVAL) {
                        writeToLog("[SwitchRPC] Periodic session refresh triggered for TID: %016llX", (unsigned long long)info.tid);
                        last_update_time = current_time;

                        // refresh session with session token that we have if any.
                        discordCreateHeadlessSession(info.tid, std::string(info.title_name), true);
                    }
                }
            } else {
                // user isn't in a game. if we had a session before, delete it since the game closed, and reset lastInfo.
                if (lastInfo.tid != 0) {
                    writeToLog("[SwitchRPC] Game closed or returned to Home Menu. Clearing session for TID: %016llX", (unsigned long long)lastInfo.tid);
                    waitForNetworkReady();

                    lastInfo = {0};
                    last_update_time = 0;

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

            discordDeleteHeadlessSession();
            lastInfo = {0};
            last_update_time = 0;
            g_asleep = true;

            ueventSignal(&g_sleepPrepDone);
        }
    }

    return 0;
}
