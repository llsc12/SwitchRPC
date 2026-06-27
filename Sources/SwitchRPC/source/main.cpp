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

    timeInitialize();
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

	// account service: needed for accountGetLastOpenedUser() to resolve which
	// Switch user is currently playing. Per the contract we use a System session;
	// if a System session cannot call accountGetLastOpenedUser on a given
	// firmware, switch this to AccountServiceType_Application.
	rc = accountInitialize(AccountServiceType_System);
	if (R_FAILED(rc))
		writeToLog("[SwitchRPC] Warning: accountInitialize failed with 0x%08X. User resolution will fail.", rc);

    // Close the service manager session.
    smExit();
}

// the link whose headless session is currently active (points into the
// discord.cpp link table). nullptr when no session is active. Kept at file
// scope so __appExit can tear the active session down on process exit.
static Link* g_activeLink = nullptr;

// Service deinitialization.
void __appExit(void)
{
    if (g_activeLink != nullptr) {
        discordDeleteHeadlessSession(*g_activeLink);
        g_activeLink = nullptr;
    }
    writeToLog("[SwitchRPC] Sysmodule exiting. Goodbye!");

    curl_global_cleanup();

    socketExit();
    accountExit();
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


const int REFRESH_INTERVAL = 15 * 60;

// Enumerate every Switch user (uid + nickname) and write them to
// sdmc:/config/switchrpc_users.json. The config app can't read the account
// service when launched as an applet, so it reads this file instead.
static void logAllSwitchUsers() {
    AccountUid uids[8];
    s32 total = 0;
    Result rc = accountListAllUsers(uids, 8, &total);
    writeToLog("[SwitchRPC] accountListAllUsers rc=0x%08X total=%d", (unsigned)rc, total);

    json_object* root = json_object_new_object();
    json_object* arr = json_object_new_array();

    for (s32 i = 0; i < total && i < 8; i++) {
        char nick[0x21] = {0};
        AccountProfile profile;
        if (R_SUCCEEDED(accountGetProfile(&profile, uids[i]))) {
            AccountProfileBase base = {0};
            if (R_SUCCEEDED(accountProfileGet(&profile, NULL, &base))) {
                strncpy(nick, base.nickname, sizeof(nick) - 1);
            }
            accountProfileClose(&profile);
        }
        std::string uidStr = accountUidToString(uids[i]);
        writeToLog("[SwitchRPC]   user[%d] uid=%s nick=%s", (int)i, uidStr.c_str(), nick);

        json_object* u = json_object_new_object();
        json_object_object_add(u, "uid", json_object_new_string(uidStr.c_str()));
        json_object_object_add(u, "nickname", json_object_new_string(nick));
        json_object_array_add(arr, u); // arr takes ownership
    }

    json_object_object_add(root, "users", arr); // root takes ownership
    FILE* f = fopen("sdmc:/config/switchrpc_users.json", "w");
    if (f) {
        fputs(json_object_to_json_string(root), f);
        fclose(f);
        writeToLog("[SwitchRPC] Wrote switchrpc_users.json (%d user(s)).", (int)total);
    } else {
        writeToLog("[SwitchRPC] Failed to write switchrpc_users.json!");
    }
    json_object_put(root);
}

int main(int argc, char* argv[])
{
    writeToLog("[SwitchRPC] Sysmodule started successfully.");

    // Active-session state (replaces the old single-account lastInfo model).
    // g_activeLink (file scope) points to the link whose session is active, or
    // nullptr when none is active. activeTid is the game tid that the active
    // state corresponds to (tracked even when no link resolves, so we don't
    // re-evaluate the same game every loop). last_update_time drives the
    // periodic refresh.
    u64 activeTid = 0;
    time_t last_update_time = 0;

    // Load links, then clean up any sessions left over from a previous run
    // (uses the just-loaded links to find the right credentials per session).
    loadLinks();
    logAllSwitchUsers();
    discordCleanupStaleSessions();

    waitForNetworkReady();
    while (true) {
        // Reload links whenever no session is active so newly-linked profiles
        // are picked up. Safe only when g_activeLink is nullptr because
        // loadLinks() rebuilds the table and would invalidate the pointer.
        if (g_activeLink == nullptr) {
            loadLinks();
        }

        AppInfo info = {0};
        Result rc = get_app_info(&info);

        bool is_game_running = R_SUCCEEDED(rc) && info.tid != 0;

        if (is_game_running) {
            // Determine which Switch user is currently playing and resolve the
            // link for that user (exact match, else default/wildcard, else none).
            AccountUid uid = {0};
            Result urc = accountGetLastOpenedUser(&uid);
            if (R_FAILED(urc)) {
                writeToLog("[SwitchRPC] accountGetLastOpenedUser failed (0x%08X); falling back to default link.", urc);
                uid.uid[0] = 0; // zero -> resolveLink returns default/wildcard if present
                uid.uid[1] = 0;
            }
            Link* resolved = resolveLink(uid);

            bool tidChanged = (info.tid != activeTid);
            bool linkChanged = (resolved != g_activeLink);

            if (tidChanged || linkChanged) {
                writeToLog("[SwitchRPC] State change. New TID: %016llX (%s), prev TID: %016llX. Link changed: %s",
                           (unsigned long long)info.tid, info.title_name,
                           (unsigned long long)activeTid, linkChanged ? "yes" : "no");
                writeToLog("[SwitchRPC] Detected playing user: rc=0x%08X uid=%s -> resolved link=%s",
                           (unsigned)urc, accountUidToString(uid).c_str(),
                           resolved ? resolved->switchUidStr.c_str() : "(none)");

                // tear down the previous active session with the PREVIOUS link's
                // credentials before switching identities.
                if (g_activeLink != nullptr) {
                    discordDeleteHeadlessSession(*g_activeLink);
                    g_activeLink = nullptr;
                }

                if (resolved != nullptr) {
                    // brand-new session for the resolved link (no token reuse).
                    bool ok = discordCreateHeadlessSession(*resolved, info.tid, std::string(info.title_name), false);
                    if (ok) {
                        g_activeLink = resolved;
                        last_update_time = time(NULL);
                    } else {
                        // create failed: stay inactive so the next loop retries
                        // promptly (linkChanged stays true while g_activeLink is
                        // null and a link still resolves).
                        g_activeLink = nullptr;
                        last_update_time = 0;
                        writeToLog("[SwitchRPC] Session create failed; will retry shortly.");
                    }
                } else {
                    writeToLog("[SwitchRPC] No link for the current user; not pushing presence.");
                    last_update_time = 0;
                }
                // track the tid regardless so we don't re-evaluate every loop.
                activeTid = info.tid;
            }
            // same game & same resolved link: periodic refresh.
            else if (g_activeLink != nullptr) {
                time_t current_time = time(NULL);
                if (current_time - last_update_time >= REFRESH_INTERVAL) {
                    writeToLog("[SwitchRPC] Periodic session refresh for TID: %016llX", (unsigned long long)info.tid);
                    bool ok = discordCreateHeadlessSession(*g_activeLink, info.tid, std::string(info.title_name), true);
                    if (ok) {
                        last_update_time = current_time;
                    }
                    // on failure, leave last_update_time so the refresh retries on
                    // the next loop instead of waiting another full interval.
                }
            }
        } else {
            // No game running. Tear down any active session, clear state.
            if (g_activeLink != nullptr) {
                writeToLog("[SwitchRPC] Game closed / Home Menu. Clearing active session.");
                waitForNetworkReady();
                discordDeleteHeadlessSession(*g_activeLink);
                g_activeLink = nullptr;
            }
            activeTid = 0;
            last_update_time = 0;
        }

        // sleep detection
        time_t sleep_start = time(NULL);
        svcSleepThread(10 * 1000 * 1000 * 1000ULL);
        time_t sleep_end = time(NULL);

        if (sleep_end - sleep_start > 15) {
            writeToLog("[SwitchRPC] Wake from sleep detected! Sleep took %lld seconds. Waiting for network...", (long long)(sleep_end - sleep_start));
            waitForNetworkReady();
            writeToLog("[SwitchRPC] Network ready after sleep, clearing sessions.");

            // drop active state (its session may be invalid after sleep), then
            // reload links and clean up everything recorded on disk.
            g_activeLink = nullptr;
            activeTid = 0;
            last_update_time = 0;
            loadLinks();
            discordCleanupStaleSessions();
        }
    }

    return 0;
}
