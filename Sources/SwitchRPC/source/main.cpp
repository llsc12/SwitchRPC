// Include the most common headers from the C standard library
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <string>

// Include the main libnx system header, for Switch development
#include <switch.h>
#include <json-c/json.h>
#include <curl/curl.h>

// Size of the inner heap (adjust as necessary).
#define INNER_HEAP_SIZE 0x80000

const char* clientId = "1249119754522857616";

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
	
	// make control data struct instance
	NsApplicationControlData appControlData = {0};
	size_t _appControlDataSize = sizeof(NsApplicationControlData);
    u64 appControlDataSize = _appControlDataSize;
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

    return 0;
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

    // Enable this if you want to use HID.
    /*rc = hidInitialize();
    if (R_FAILED(rc))
        diagAbortWithResult(MAKERESULT(Module_Libnx, LibnxError_InitFail_HID));*/

    // Enable this if you want to use time.
    /*rc = timeInitialize();
    if (R_FAILED(rc))
        diagAbortWithResult(MAKERESULT(Module_Libnx, LibnxError_InitFail_Time));

    __libnx_init_time();*/

    // Disable this if you don't want to use the filesystem.
    rc = fsInitialize();
    if (R_FAILED(rc))
        diagAbortWithResult(MAKERESULT(Module_Libnx, LibnxError_InitFail_FS));

    // Disable this if you don't want to use the SD card filesystem.
    fsdevMountSdmc();

    // Add other services you want to use here.
    SocketInitConfig socketConfig;
	socketConfig.tcp_tx_buf_size = 0x8000;  // 32 KiB
	socketConfig.tcp_rx_buf_size = 0x8000;
	socketConfig.tcp_tx_buf_max_size = 0x20000;  // 128 KiB
	socketConfig.tcp_rx_buf_max_size = 0x20000;
	socketConfig.udp_tx_buf_size = 0x0;
	socketConfig.udp_rx_buf_size = 0x0;
	socketConfig.sb_efficiency = 1;
	socketConfig.bsd_service_type = BsdServiceType_Auto;    
	socketInitialize(&socketConfig);
	
    // curl initialization
    curl_global_init(CURL_GLOBAL_DEFAULT);
	
	pmdmntInitialize();
//	pminfoInitialize();
	nsInitialize();
	setInitialize();

    // Close the service manager session.
    smExit();
}

// Service deinitialization.
void __appExit(void)
{
    curl_global_cleanup();

    socketExit();
    setExit();
    nsExit();
    pmdmntExit();
    //pminfoExit();

    // Close extra services you added to __appInit here.
    fsdevUnmountAll(); // Disable this if you don't want to use the SD card filesystem.
    fsExit(); // Disable this if you don't want to use the filesystem.
    //timeExit(); // Enable this if you want to use time.
    //hidExit(); // Enable this if you want to use HID.
}

#ifdef __cplusplus
}
#endif

AppInfo lastInfo = {0};

// Main program entrypoint
int main(int argc, char* argv[])
{
    // Main loop, we check the currently open title every 60 seconds.
    while (true) {
        AppInfo info;
        Result rc = get_app_info(&info);
        if (R_SUCCEEDED(rc)) {
            if (info.tid != lastInfo.tid) {

                lastInfo = info;
                // post_to_discord(&info);

                // temporarily print tid to a file every 10 seconds.
                FILE* file = fopen("sdmc:/switchrpc_current_title.txt", "w");
                if (file != NULL) {
                    fprintf(file, "Current Title: %s\nTID: %016" PRIx64, info.title_name, info.tid);
                    fclose(file);
                }
            }
        } else {
            printf("Failed to get app info: 0x%08x\n", rc);
        }
        svcSleepThread(60 * 1000 * 1000 * 1000ULL); // Sleep for 60 seconds
    }

    return 0;
}

// discord helper functions

// function to post the current title id and name to discord rich presence
// void post_to_discord(AppInfo *info) {
//     // create json object
//     JsonObject json;
//     json["content"] = "Currently playing: " + std::string(info->title_name) + " (TID: " + std::to_string(info->tid) + ")";
    
//     // convert json object to string
//     std::string json_str = json.dump();

//     // send http POST request to discord webhook
//     CURL *curl = curl_easy_init();
//     if(curl) {
//         curl_easy_setopt(curl, CURLOPT_URL, "https://discord.com/api/webhooks/YOUR_WEBHOOK_URL");
//         curl_easy_setopt(curl, CURLOPT_POSTFIELDS, json_str.c_str());
//         curl_easy_setopt(curl, CURLOPT_POSTFIELDSIZE, json_str.size());
//         CURLcode res = curl_easy_perform(curl);
//         if(res != CURLE_OK)
//             fprintf(stderr, "curl_easy_perform() failed: %s\n", curl_easy_strerror(res));
//         curl_easy_cleanup(curl);
//     }
// }

// discord authentication tokens
std::string refreshToken = "";
std::string authToken = "";
// token for the rich presence session to refresh it every 15 minutes or delete it when the app is closed
std::string sessionToken = "";
u64 sessionTokenExpiry = 0; // we derive this ourselves by getting the time of the request we did to make the session + 20 minutes.
// the time when the auth token will expire, so we can refresh it before it does
time_t authTokenExpiry = 0;
std::string cookies = "";


void getRefreshTokenFromFile() {
    FILE* file = fopen("sdmc:/config/switchrpc/discord_token", "r");
    if (file == NULL) { return; }
    
    char buf[513] = {0};
    if (fgets(buf, sizeof(buf), file) != NULL) {
        refreshToken = buf;
        if (!refreshToken.empty() && refreshToken.back() == '\n') {
            refreshToken.pop_back();
        }
        if (!refreshToken.empty() && refreshToken.back() == '\r') {
            refreshToken.pop_back();
        }
    }
    fclose(file);
}

void saveRefreshTokenToFile() {
    // save the refresh token to a file on the sd card
    FILE* file = fopen("sdmc:/config/switchrpc/discord_token", "w");
    if (file == NULL) { return; }
    fprintf(file, "%s", refreshToken.c_str());
    fclose(file);
    return;
}

// curl helper for easy requests to discord,
// specify url, method, headers, and body as needed and a pointer to a string to store the response in, and the size of that string.
void sendRequest(const char* url, const char* method, struct curl_slist* headers, const char* body, std::string* response) {
    CURL *curl = curl_easy_init();
    if(curl) {
        curl_easy_setopt(curl, CURLOPT_URL, url);
        curl_easy_setopt(curl, CURLOPT_CUSTOMREQUEST, method);
        if (headers != NULL)
            curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);
        if (body != NULL)
            curl_easy_setopt(curl, CURLOPT_POSTFIELDS, body);
                curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, [](char* ptr, size_t size, size_t nmemb, void* userdata) -> size_t {
            size_t total_size = size * nmemb;
            if (userdata != NULL) {
                std::string* resp = static_cast<std::string*>(userdata);
                resp->append(ptr, total_size); 
            }
            return total_size;
        });
        curl_easy_setopt(curl, CURLOPT_WRITEDATA, response); 
        CURLcode res = curl_easy_perform(curl);
        if(res != CURLE_OK) fprintf(stderr, "curl_easy_perform() failed: %s\n", curl_easy_strerror(res));
        
        if (headers != NULL) { curl_slist_free_all(headers); }
        curl_easy_cleanup(curl);
    }
}

void refreshAuthTokenIfNeeded() {
    // send request to discord to get a new auth token using the client id and refresh token, and save the new refresh token and auth token, also save the expiry time of the auth token so we can refresh it before it expires

    // check that we have a refresh token, if not, we can't do anything
    getRefreshTokenFromFile();
    if (refreshToken.empty()) { return; }

    // check if the auth token is expired or will expire in the next 5 minutes
    if (time(NULL) < authTokenExpiry - 300) { return; }

    const char* url = "https://gaming-sdk.com/api/v9/oauth2/token";
    const char* method = "POST";
    struct curl_slist* headers = NULL;
    headers = curl_slist_append(headers, "Content-Type: application/x-www-form-urlencoded; charset=utf-8");
    char* body = (char*)malloc(256);
    snprintf(body, 256, "grant_type=refresh_token&refresh_token=%s&client_id=%s", refreshToken.c_str(), clientId);
    std::string response = "";
    sendRequest(url, method, headers, body, &response);   
    free(body);

    json_object* json_response = json_tokener_parse(response.c_str());
    if (json_response == NULL) { return; }
    json_object* json_auth_token;
    json_object* json_refresh_token;
    json_object* json_expires_in;
    if (json_object_object_get_ex(json_response, "access_token", &json_auth_token)) {
        authToken = json_object_get_string(json_auth_token);
    }
    if (json_object_object_get_ex(json_response, "refresh_token", &json_refresh_token)) {
        refreshToken = json_object_get_string(json_refresh_token);
    }
    if (json_object_object_get_ex(json_response, "expires_in", &json_expires_in)) {
        authTokenExpiry = time(NULL) + json_object_get_int(json_expires_in);
    }

    if (json_response != NULL) {
        json_object_put(json_response); // Frees the parsed json object
    }   

    // save the new refresh token to the sd card
    saveRefreshTokenToFile();
}

void authenticatedRequest(const char* url, const char* method, struct curl_slist* headers, const char* body, std::string* response) {
    refreshAuthTokenIfNeeded();
    std::string authHeader = "Authorization: Bearer " + authToken;
    struct curl_slist* authHeaders = curl_slist_append(headers, authHeader.c_str());
    sendRequest(url, method, authHeaders, body, response);
}

void discordCreateHeadlessSession(u64 titleId, const bool includeToken) {
    std::string tinfoilUrl;
    char titleIdStr[17] = {0};
    snprintf(titleIdStr, sizeof(titleIdStr), "%016" PRIx64, titleId);
    tinfoilUrl = "https://tinfoil.media/ti/";   
    tinfoilUrl += titleIdStr;
    tinfoilUrl += "/512/512/";

    // make json body
    json_object* json_body = json_object_new_object();
    json_object* json_activities = json_object_new_array();
    json_object* json_activity = json_object_new_object();
    json_object_object_add(json_activity, "type", json_object_new_string("0"));
    json_object_object_add(json_activity, "flags", json_object_new_string("0"));  
    json_object_object_add(json_activity, "application_id", json_object_new_string(clientId));
    json_object_object_add(json_activity, "platform", json_object_new_string("switch"));
    json_object_object_add(json_activity, "name", json_object_new_string("SwitchRPC"));
    json_object_object_add(json_activity, "state", json_object_new_string("Running on Nintendo Switch"));
    
    json_object* json_assets = json_object_new_object();
    json_object_object_add(json_assets, "large_image", json_object_new_string(tinfoilUrl.c_str()));
    json_object_object_add(json_activity, "assets", json_assets);
    
    json_object_array_add(json_activities, json_activity);
    json_object_object_add(json_body, "activities", json_activities);
    
    if (includeToken && !sessionToken.empty()) {
        json_object_object_add(json_body, "token", json_object_new_string(sessionToken.c_str()));
    }
    
    const char* body = json_object_get_string(json_body);

    std::string response;
    authenticatedRequest("https://discord.com/api/v9/users/@me/headless-sessions", "POST", NULL, body, &response);

    json_object_put(json_body);

    json_object* json_response = json_tokener_parse(response.c_str());
    if (json_response == NULL) { return; }
    
    json_object* json_session_token;
    if (json_object_object_get_ex(json_response, "token", &json_session_token)) {
        sessionToken = json_object_get_string(json_session_token);
        sessionTokenExpiry = time(NULL) + 900; // 15 mins to be safe.
    }

    json_object_put(json_response);
}

void discordDeleteHeadlessSession() {
    if (sessionToken.empty()) { return; }

    json_object* json_body = json_object_new_object();
    json_object_object_add(json_body, "token", json_object_new_string(sessionToken.c_str()));
    const char* body = json_object_get_string(json_body);

    authenticatedRequest("https://discord.com/api/v9/users/@me/headless-sessions/delete", "POST", NULL, body, NULL);

    json_object_put(json_body);
}
