#pragma once

#include <string>
#include <switch.h>

/**
 * Waits until the network is ready before proceeding.
*/
void waitForNetworkReady();

/**
 * Looks up the eShop square icon URL for a title from Nintendo's EU search API.
 * Returns true and sets out_url on success, false if the title isn't found.
 *
 * @param titleId  The title ID of the game (as a u64).
 * @param out_url  Output: the image_url_sq_s from the EU eShop (500×500 JPEG).
 */
bool fetchEshopIconUrl(u64 titleId, std::string& out_url);

typedef struct {
	u64 pid;          ///< process id
	u64 tid;          ///< title id
	char title_name[513];  ///< Title name 512 + 1 for null terminator
} AppInfo;

/**
 * Retrieves information about the currently running application, including its process ID, title ID, and title name.
 * 
 * @param info Pointer to an AppInfo structure that will be filled with the application information.
 * @return Returns 0 on success, or a non-zero value on error (the int holds the libnx Result).
 */
Result get_app_info(AppInfo *info);

extern PscPmModule g_pscModule;
extern Thread g_pscThread;
extern bool g_pscReady;
extern volatile bool g_pscThreadRun;
extern volatile bool g_wokeFromSleep;
extern volatile bool g_sleepPending;
extern volatile bool g_asleep;
extern UEvent g_pscWakeMain;
extern UEvent g_sleepPrepDone;

void pscThreadFunc(void*);

// system clock may be off from real time, we depend on discord to find that offset.
// Share single global time offset across all translation units
extern int64_t g_timeOffset; 

/**
 * Returns the raw time without corrections.
 */
u64 getRawNowSec();

/**
 * Returns current epoch timestamp (seconds) corrected using HTTP Date header offsets.
 */
u64 getCorrectedNowSec();

/**
 * Convenience wrapper for getCorrectedNowSec().
 */
u64 nowSec();

/**
 * Updates the global time offset between local Switch clock and server real time,
 * adjusting any active expiry timestamps by the offset delta.
 */
void updateTimeOffset(int64_t newOffset);