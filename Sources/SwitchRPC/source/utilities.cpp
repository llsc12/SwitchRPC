#include <stdio.h>
#include <string.h>
#include <string>
#include <fstream>
#include <switch.h>
#include <json-c/json.h>
#include <curl/curl.h>
#include "utilities.hpp"
#include "logging.hpp"

#define ICON_CACHE_PATH "sdmc:/config/switchrpc-eshop-iconcache.json"

static bool loadIconFromCache(const char* titleId, std::string& out_url) {
    std::ifstream file(ICON_CACHE_PATH);
    if (!file.is_open()) return false;

    std::string contents((std::istreambuf_iterator<char>(file)), std::istreambuf_iterator<char>());
    file.close();

    json_object* root = json_tokener_parse(contents.c_str());
    if (!root) return false;

    json_object* val;
    bool found = false;
    if (json_object_object_get_ex(root, titleId, &val)) {
        out_url = json_object_get_string(val);
        found = true;
    }

    json_object_put(root);
    return found;
}

static bool isValidUtf8(const char* s) {
    const unsigned char* p = (const unsigned char*)s;
    while (*p) {
        if (*p < 0x20) return false;
        if (*p < 0x80) p++;
        else if (*p >= 0xC2 && (*p & 0xE0) == 0xC0 && (p[1] & 0xC0) == 0x80) p += 2;
        else if ((*p & 0xF0) == 0xE0 && (p[1] & 0xC0) == 0x80 && (p[2] & 0xC0) == 0x80) p += 3;
        else if ((*p & 0xF8) == 0xF0 && (p[1] & 0xC0) == 0x80 && (p[2] & 0xC0) == 0x80 && (p[3] & 0xC0) == 0x80) p += 4;
        else return false;
    }
    return true;
}

static bool nameOk(const char* n, size_t cap) {
    size_t len = strnlen(n, cap);
    return len > 0 && len < cap && isValidUtf8(n);
}

static void saveIconToCache(const char* titleId, const char* url) {
    std::ifstream infile(ICON_CACHE_PATH);
    std::string contents;
    if (infile.is_open()) {
        contents = std::string((std::istreambuf_iterator<char>(infile)), std::istreambuf_iterator<char>());
        infile.close();
    }

    json_object* root = contents.empty() ? nullptr : json_tokener_parse(contents.c_str());
    if (!root) root = json_object_new_object();

    json_object_object_add(root, titleId, json_object_new_string(url));

    std::ofstream outfile(ICON_CACHE_PATH, std::ios::trunc);
    if (outfile.is_open()) {
        outfile << json_object_to_json_string(root);
        outfile.close();
        writeToLog("[eShop] Saved icon to cache for %s", titleId);
    } else {
        writeToLog("[eShop] Failed to write icon cache");
    }

    json_object_put(root);
}

bool fetchEshopIconUrl(u64 titleId, std::string& out_url) {
    char titleIdStr[17] = {0};
    snprintf(titleIdStr, sizeof(titleIdStr), "%016llx", (unsigned long long)titleId);

    if (loadIconFromCache(titleIdStr, out_url)) {
        writeToLog("[eShop] Cache hit for %s: %s", titleIdStr, out_url.c_str());
        return true;
    }

    char url[512];
    snprintf(url, sizeof(url),
        "https://searching.nintendo-europe.com/en/select"
        "?q=application_id_s%%3A%s"
        "&wt=json&fq=type%%3AGAME"
        "&fl=application_id_s%%2Cimage_url_sq_s"
        "&rows=5"
        "&sort=dates_released_dts+asc",
        titleIdStr);

    CURL* curl = curl_easy_init();
    if (!curl) {
        writeToLog("[eShop] Failed to init cURL for icon lookup");
        return false;
    }

    std::string response;
    curl_easy_setopt(curl, CURLOPT_URL, url);
    curl_easy_setopt(curl, CURLOPT_HTTPGET, 1L);
    curl_easy_setopt(curl, CURLOPT_SSL_VERIFYPEER, 0L);
    curl_easy_setopt(curl, CURLOPT_SSL_VERIFYHOST, 0L);
    curl_easy_setopt(curl, CURLOPT_TIMEOUT, 10L);
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, +[](char* ptr, size_t size, size_t nmemb, void* userdata) -> size_t {
        static_cast<std::string*>(userdata)->append(ptr, size * nmemb);
        return size * nmemb;
    });
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &response);

    struct curl_slist* dns_cache = NULL;
    dns_cache = curl_slist_append(dns_cache, "searching.nintendo-europe.com:443:151.101.3.52");
    dns_cache = curl_slist_append(dns_cache, "searching.nintendo-europe.com:443:151.101.67.52");
    dns_cache = curl_slist_append(dns_cache, "searching.nintendo-europe.com:443:151.101.131.52");
    dns_cache = curl_slist_append(dns_cache, "searching.nintendo-europe.com:443:151.101.195.52");
    curl_easy_setopt(curl, CURLOPT_RESOLVE, dns_cache);

    struct curl_slist* headers = NULL;
    headers = curl_slist_append(headers, "User-Agent: SwitchRPC/1.0");
    curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);

    CURLcode res = curl_easy_perform(curl);
    curl_slist_free_all(headers);
    curl_slist_free_all(dns_cache);
    curl_easy_cleanup(curl);

    if (res != CURLE_OK) {
        writeToLog("[eShop] cURL failed: %s", curl_easy_strerror(res));
        return false;
    }

    json_object* root = json_tokener_parse(response.c_str());
    if (!root) {
        writeToLog("[eShop] Failed to parse JSON response");
        return false;
    }

    bool found = false;
    json_object* resp_obj;
    if (json_object_object_get_ex(root, "response", &resp_obj)) {
        json_object* docs;
        if (json_object_object_get_ex(resp_obj, "docs", &docs)) {
            int n = json_object_array_length(docs);
            for (int i = 0; i < n; i++) {
                json_object* doc = json_object_array_get_idx(docs, i);
                json_object* app_id_obj;
                json_object* img_obj;
                if (json_object_object_get_ex(doc, "application_id_s", &app_id_obj) &&
                    json_object_object_get_ex(doc, "image_url_sq_s", &img_obj))
                {
                    const char* app_id = json_object_get_string(app_id_obj);
                    if (app_id && strcmp(app_id, titleIdStr) == 0) {
                        out_url = json_object_get_string(img_obj);
                        found = true;
                        break;
                    }
                }
            }
        }
    }

    json_object_put(root);

    if (found) {
        writeToLog("[eShop] Found icon for %s: %s", titleIdStr, out_url.c_str());
        saveIconToCache(titleIdStr, out_url.c_str());
    } else {
        writeToLog("[eShop] No icon found in EU eShop for %s", titleIdStr);
    }

    return found;
}

// blocks until network is ready, if ever. 
void waitForNetworkReady() {
  writeToLog("[Network] Waiting for network to be ready...");

  while (true) {
    NifmInternetConnectionType connectionType;
    u32 wifiStrength;
    NifmInternetConnectionStatus connectionStatus;

    Result rc = nifmGetInternetConnectionStatus(&connectionType, &wifiStrength, &connectionStatus);
    
    if (R_SUCCEEDED(rc) && connectionStatus == NifmInternetConnectionStatus_Connected) {
      break;
    }

    svcSleepThread(1 * 1000 * 1000 * 1000ULL);
  }
}


// current process/title utilities

// plain GET against Nintendo's EU search API (same settings as the icon lookup)
static bool eshopGet(const char* url, std::string& response) {
    CURL* curl = curl_easy_init();
    if (!curl) return false;

    curl_easy_setopt(curl, CURLOPT_URL, url);
    curl_easy_setopt(curl, CURLOPT_HTTPGET, 1L);
    curl_easy_setopt(curl, CURLOPT_SSL_VERIFYPEER, 0L);
    curl_easy_setopt(curl, CURLOPT_SSL_VERIFYHOST, 0L);
    curl_easy_setopt(curl, CURLOPT_TIMEOUT, 10L);
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, +[](char* ptr, size_t size, size_t nmemb, void* userdata) -> size_t {
        static_cast<std::string*>(userdata)->append(ptr, size * nmemb);
        return size * nmemb;
    });
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &response);

    struct curl_slist* dns_cache = NULL;
    static const char* ips[] = { "151.101.3.52", "151.101.67.52", "151.101.131.52", "151.101.195.52" };
    for (const char* ip : ips) {
        char entry[64];
        snprintf(entry, sizeof(entry), "searching.nintendo-europe.com:443:%s", ip);
        dns_cache = curl_slist_append(dns_cache, entry);
    }
    curl_easy_setopt(curl, CURLOPT_RESOLVE, dns_cache);

    struct curl_slist* headers = curl_slist_append(NULL, "User-Agent: SwitchRPC/1.0");
    curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);

    CURLcode res = curl_easy_perform(curl);
    curl_slist_free_all(headers);
    curl_slist_free_all(dns_cache);
    curl_easy_cleanup(curl);

    if (res != CURLE_OK) {
        writeToLog("[eShop] cURL failed: %s", curl_easy_strerror(res));
        return false;
    }
    return true;
}

// title from the EU eShop (cached). Network lookups are throttled to one per minute per title.
static bool fetchEshopTitle(u64 titleId, std::string& out_name) {
    // remember the last resolved name so we don't re-read the cache file every poll
    static u64 s_nameTid = 0;
    static std::string s_name;
    if (s_nameTid == titleId && !s_name.empty()) { out_name = s_name; return true; }

    char tid[17] = {0};
    snprintf(tid, sizeof(tid), "%016llx", (unsigned long long)titleId);
    char key[32];
    snprintf(key, sizeof(key), "%s_name", tid);

    if (loadIconFromCache(key, out_name) && nameOk(out_name.c_str(), out_name.size() + 1)) {
        s_nameTid = titleId;
        s_name = out_name;
        return true;
    }

    static u64 s_tid = 0, s_at = 0;
    u64 now = getRawNowSec();
    if (s_tid == titleId && now - s_at < 60) return false;
    s_tid = titleId;
    s_at = now;

    char url[512];
    snprintf(url, sizeof(url),
        "https://searching.nintendo-europe.com/en/select"
        "?q=application_id_s%%3A%s"
        "&wt=json&fq=type%%3AGAME"
        "&fl=application_id_s%%2Ctitle"
        "&rows=5"
        "&sort=dates_released_dts+asc",
        tid);

    std::string response;
    if (!eshopGet(url, response)) return false;

    json_object* root = json_tokener_parse(response.c_str());
    if (!root) {
        writeToLog("[eShop] Failed to parse title response");
        return false;
    }

    bool found = false;
    json_object *resp_obj, *docs;
    if (json_object_object_get_ex(root, "response", &resp_obj) &&
        json_object_object_get_ex(resp_obj, "docs", &docs)) {
        int n = json_object_array_length(docs);
        for (int i = 0; i < n && !found; i++) {
            json_object* doc = json_object_array_get_idx(docs, i);
            json_object *id_obj, *title_obj;
            if (json_object_object_get_ex(doc, "application_id_s", &id_obj) &&
                json_object_object_get_ex(doc, "title", &title_obj)) {
                const char* id = json_object_get_string(id_obj);
                const char* title = json_object_get_string(title_obj);
                if (id && title && strcmp(id, tid) == 0 && nameOk(title, 128)) {
                    out_name = title;
                    found = true;
                }
            }
        }
    }
    json_object_put(root);

    if (found) {
        writeToLog("[eShop] Found title for %s: %s", tid, out_name.c_str());
        saveIconToCache(key, out_name.c_str());
        s_nameTid = titleId;
        s_name = out_name;
    } else {
        writeToLog("[eShop] No title found in EU eShop for %s", tid);
    }
    return found;
}

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
	NacpLanguageEntry *languageEntry = NULL;

	Result nsRc = nsGetApplicationControlData(NsApplicationControlSource_Storage, *out_tid,
	                                          appControlData, appControlDataSize, &appControlDataSize);
	NacpLanguageEntry *chosen = NULL;

	static u64 s_loggedTid = 0, s_failedTid = 0; // log once per title, not every poll

	if (R_SUCCEEDED(nsRc)) {
		// 1) the system-language entry, if its name is sane
		if (R_SUCCEEDED(nacpGetLanguageEntry(&appControlData->nacp, &languageEntry)) &&
		    languageEntry && nameOk(languageEntry->name, sizeof(languageEntry->name))) {
			chosen = languageEntry;
		}
		// 2) otherwise the first language entry with a sane name
		for (int i = 0; !chosen && i < 16; i++) {
			NacpLanguageEntry *e = &appControlData->nacp.lang[i];
			if (nameOk(e->name, sizeof(e->name))) chosen = e;
		}
		if (!chosen && s_loggedTid != *out_tid) {
			s_loggedTid = *out_tid;
			writeToLog("[SwitchRPC] No usable NACP name for %016llX (control data 0x%llX bytes, icon magic %02X%02X%02X)",
			           (unsigned long long)*out_tid, (unsigned long long)appControlDataSize,
			           appControlData->icon[0], appControlData->icon[1], appControlData->icon[2]);
		}
	} else {
		if (s_failedTid != *out_tid) {
			s_failedTid = *out_tid;
			writeToLog("[SwitchRPC] nsGetApplicationControlData failed: 0x%08X", nsRc);
		}
		free(appControlData);
		return MAKERESULT(Module_Libnx, LibnxError_NotFound);
	}
	
	bool haveName = false;
	if (chosen) {
		strncpy(info->title_name, chosen->name, sizeof(info->title_name) - 1);
		info->title_name[sizeof(info->title_name) - 1] = '\0';
		haveName = true;
	}

	// release the ~144 KB control-data buffer BEFORE any network call:
	// the sysmodule heap is only 512 KB and TLS needs most of the rest
	free(appControlData);
	appControlData = NULL;

	if (!haveName) {
		// NACP name unusable: try the eShop title, then the title ID
		std::string eshopName;
		if (fetchEshopTitle(*out_tid, eshopName)) {
			strncpy(info->title_name, eshopName.c_str(), sizeof(info->title_name) - 1);
			info->title_name[sizeof(info->title_name) - 1] = '\0';
		} else {
			snprintf(info->title_name, sizeof(info->title_name), "Title %016llX", (unsigned long long)*out_tid);
		}
	}

	return 0;
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

PscPmModule g_pscModule;
Thread g_pscThread;
bool g_pscReady = false;
volatile bool g_pscThreadRun = true;
volatile bool g_wokeFromSleep = false;
volatile bool g_sleepPending = false;
volatile bool g_asleep = false;
UEvent g_pscWakeMain;
UEvent g_sleepPrepDone;

void pscThreadFunc(void* arg) {
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

int64_t g_timeOffset = 0;

u64 getCorrectedNowSec() {
    return (time_t)(getRawNowSec() + g_timeOffset);
}

u64 nowSec() {
    return getCorrectedNowSec();
}

u64 getRawNowSec() {
    u64 rawLocal = 0;
    if (R_FAILED(timeGetCurrentTime(TimeType_Default, &rawLocal)) || rawLocal == 0) {
        rawLocal = (u64)time(NULL);
    }
    return rawLocal;
}

extern time_t authTokenExpiry;
extern time_t sessionTokenExpiry;

void updateTimeOffset(int64_t newOffset) {
    int64_t delta = newOffset - g_timeOffset;
    g_timeOffset = newOffset;

    writeToLog("[Network] Synced time offset from Discord HTTP response: %lld seconds (delta: %llds)", 
               (long long)g_timeOffset, (long long)delta);

    // Shift active expiry targets so their remaining lifespans stay valid
    if (delta != 0) {
        if (authTokenExpiry > 0) {
            authTokenExpiry += delta;
        }
        if (sessionTokenExpiry > 0) {
            sessionTokenExpiry += delta;
        }
    }
}
