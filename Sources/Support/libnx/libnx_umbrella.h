//
//  libnx_umbrella.h
//  SwitchRPC
//
//  Created by Lakhan Lothiyi on 31/07/2025.
//

#include "/opt/devkitpro/libnx/include/switch.h"
#include "/opt/devkitpro/libnx/include/poll.h"
#include "/opt/devkitpro/libnx/include/sys/socket.h"
#include "/opt/devkitpro/libnx/include/arpa/inet.h"
#include "/opt/devkitpro/libnx/include/netinet/in.h"


// struct with tid and title name
typedef struct {
	u64 tid;          ///< title id
	char title_name[513];  ///< Title name 512 + 1 for null terminator
} AppInfo;


// Return 0 on success, non-zero on error (int holds the libnx Result)
Result get_app_info(AppInfo *info) {
	u64 *out_pid = &info->tid;
	u64 *out_tid = &info->tid;
	
	Result rc;
	
	rc = pmdmntGetApplicationProcessId(out_pid);
	if (R_FAILED(rc)) return rc;
	
	rc = pmdmntGetProgramId(out_tid, *out_pid);
	if (R_FAILED(rc)) return rc;
	
	// Get the title name
	
	// static NsApplicationControlData appControlData;
	// size_t appControlDataSize;
	// NacpLanguageEntry *languageEntry;

	// memset(&appControlData, 0, sizeof(NsApplicationControlData));

	// if (R_SUCCEEDED(nsGetApplicationControlData(NsApplicationControlSource_Storage, programId, &appControlData, sizeof(NsApplicationControlData), &appControlDataSize)))
	// {
	// 	if (R_SUCCEEDED(nacpGetLanguageEntry(&appControlData.nacp, &languageEntry)))
	// 	{
	// 		if (languageEntry != nullptr)
	// 			return languageEntry->name;
	// 	}
	// }
	// return "A Game";
	
	// make control data struct instance
	NsApplicationControlData appControlData = {0};
	size_t appControlDataSize = sizeof(NsApplicationControlData);
	NacpLanguageEntry *languageEntry;
	
	memset(&appControlData, 0, sizeof(NsApplicationControlData));
	if (R_SUCCEEDED(nsGetApplicationControlData(NsApplicationControlSource_Storage, *out_tid, &appControlData, appControlDataSize, &appControlDataSize))) {
		if (R_SUCCEEDED(nacpGetLanguageEntry(&appControlData.nacp, &languageEntry))) {
			if (languageEntry != NULL) {
				strncpy(info->title_name, languageEntry->name, sizeof(info->title_name) - 1);
				info->title_name[sizeof(info->title_name) - 1] = '\0'; // Ensure null termination
			} else {
				strncpy(info->title_name, "Unknown Title", sizeof(info->title_name) - 1);
				info->title_name[sizeof(info->title_name) - 1] = '\0'; // Ensure null termination
			}
		} else {
			strncpy(info->title_name, "N/A", sizeof(info->title_name) - 1);
			info->title_name[sizeof(info->title_name) - 1] = '\0'; // Ensure null termination
		}
	} else {
		strncpy(info->title_name, "N/A", sizeof(info->title_name) - 1);
		info->title_name[sizeof(info->title_name) - 1] = '\0'; // Ensure null termination
	}
}
