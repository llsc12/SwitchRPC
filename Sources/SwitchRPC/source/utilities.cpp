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