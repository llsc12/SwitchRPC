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

    // Disable this if you don't want to use the SD card filesystem.
    fsdevMountSdmc();

    // Add other services you want to use here.
    SocketInitConfig socketConfig = {0}; 
    
    // someone in reswitched suggested this
    socketConfig.tcp_tx_buf_size = 0x8000;
    socketConfig.tcp_rx_buf_size = 0x8000;
    socketConfig.tcp_tx_buf_max_size = 0x20000;
    socketConfig.tcp_rx_buf_max_size = 0x20000;
    socketConfig.udp_tx_buf_size = 0x0;
    socketConfig.udp_rx_buf_size = 0x0;
    socketConfig.sb_efficiency = 1;
    socketConfig.bsd_service_type = BsdServiceType_Auto;    
    socketInitialize(&socketConfig);

    curl_global_init(CURL_GLOBAL_DEFAULT);
	
	pmdmntInitialize();
	nsInitialize();
	setInitialize();

    // Close the service manager session.
    smExit();
}

// Service deinitialization.
void __appExit(void)
{
    discordDeleteHeadlessSession();
    writeToLog("[SwitchRPC] Sysmodule exiting. Goodbye!");

    curl_global_cleanup();

    socketExit();
    setExit();
    nsExit();
    pmdmntExit();

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
    initLog();
    writeToLog("[SwitchRPC] Sysmodule started successfully.");

    AppInfo lastInfo = {0};
    time_t last_update_time = 0;
    
    while (true) {
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
                
                lastInfo = {0};
                last_update_time = 0;
                
                discordDeleteHeadlessSession();
            }
        }

        svcSleepThread(10 * 1000 * 1000 * 1000ULL);
    }

    return 0;
}