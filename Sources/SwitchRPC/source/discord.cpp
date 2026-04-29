// discord.cpp

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <string>
#include <time.h>

#include <switch.h>
#include <json-c/json.h>
#include <curl/curl.h>

#include "discord.hpp"
#include "logging.hpp"

const char* clientId = "1249119754522857616";

// discord authentication tokens
std::string refreshToken = "";
std::string authToken = "";
// token for the rich presence session to refresh it every 15 minutes or delete it when the app is closed
std::string sessionToken = "";
u64 sessionTokenExpiry = 0; // we derive this ourselves by getting the time of the request we did to make the session + 20 minutes.
// the time when the auth token will expire, so we can refresh it before it does
time_t authTokenExpiry = 0;


void getRefreshTokenFromFile() {
    FILE* file = fopen("sdmc:/config/switchrpc_token", "r");
    if (file == NULL) { 
        writeToLog("[Discord] No refresh token found at sdmc:/config/switchrpc_token");
        return; 
    }
    
    char buf[513] = {0};
    if (fgets(buf, sizeof(buf), file) != NULL) {
        refreshToken = buf;
        if (!refreshToken.empty() && refreshToken.back() == '\n') {
            refreshToken.pop_back();
        }
        if (!refreshToken.empty() && refreshToken.back() == '\r') {
            refreshToken.pop_back();
        }
        writeToLog("[Discord] Successfully read refresh token from file");
    } else {
        writeToLog("[Discord] Failed to read from sdmc:/config/switchrpc_token");
    }
    fclose(file);
}

void saveRefreshTokenToFile() {
    // save the refresh token to a file on the sd card
    FILE* file = fopen("sdmc:/config/switchrpc_token", "w");
    if (file == NULL) { 
        writeToLog("[Discord] Failed to open sdmc:/config/switchrpc_token for writing!");
        return; 
    }
    fprintf(file, "%s", refreshToken.c_str());
    fclose(file);
    writeToLog("[Discord] Successfully saved new refresh token to file");
}


int curlDebugCallback(CURL *handle, curl_infotype type, char *data, size_t size, void *userp) {
    (void)handle; // Unused
    (void)userp;  // Unused

    const char* type_str = "";
    switch (type) {
        case CURLINFO_TEXT:         type_str = "Info"; break;
        case CURLINFO_HEADER_IN:    type_str = "Recv Header"; break;
        case CURLINFO_HEADER_OUT:   type_str = "Send Header"; break;
        default: return 0; 
    }

    std::string text(data, size);

    while(!text.empty() && (text.back() == '\n' || text.back() == '\r')) {
        text.pop_back();
    }

    if (!text.empty()) {
        writeToLog("[cURL %s] %s", type_str, text.c_str());
    }

    return 0;
}

// curl helper for easy requests to discord,
// specify url, method, headers, and body as needed and a pointer to a string to store the response in, and the size of that string.
void sendRequest(const char* url, const char* method, struct curl_slist* headers, const char* body, std::string* response) {
    writeToLog("[Discord] Sending %s request to %s", method, url);
    if (body != NULL) {
        writeToLog("[Discord] Request Body: %s", body);
    }

    CURL *curl = curl_easy_init();
    if(curl) {
        curl_easy_setopt(curl, CURLOPT_URL, url);
        curl_easy_setopt(curl, CURLOPT_CUSTOMREQUEST, method);
        headers = curl_slist_append(headers, "Accept: application/json");
        headers = curl_slist_append(headers, "Connection: close");
        curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);
        if (body != NULL)
            curl_easy_setopt(curl, CURLOPT_POSTFIELDS, body);
        curl_easy_setopt(curl, CURLOPT_SSL_VERIFYPEER, 0L);
        curl_easy_setopt(curl, CURLOPT_SSL_VERIFYHOST, 0L);

        // temporary fix to failing dns resolution
        struct curl_slist *dns_cache = NULL;
        dns_cache = curl_slist_append(dns_cache, "discord.com:443:162.159.138.232");
        dns_cache = curl_slist_append(dns_cache, "discord.com:443:162.159.135.232");
        
        dns_cache = curl_slist_append(dns_cache, "gaming-sdk.com:443:104.18.41.99");
        dns_cache = curl_slist_append(dns_cache, "gaming-sdk.com:443:172.64.146.157");
        curl_easy_setopt(curl, CURLOPT_RESOLVE, dns_cache);

        // curl_easy_setopt(curl, CURLOPT_VERBOSE, 1L);
        // curl_easy_setopt(curl, CURLOPT_DEBUGFUNCTION, curlDebugCallback);
        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, +[](char* ptr, size_t size, size_t nmemb, void* userdata) -> size_t {
            size_t total_size = size * nmemb;
            if (userdata != NULL) {
                std::string* resp = static_cast<std::string*>(userdata);
                resp->append(ptr, total_size); 
            }
            return total_size;
        });
        curl_easy_setopt(curl, CURLOPT_WRITEDATA, response); 
        
        CURLcode res = curl_easy_perform(curl);
        if(res != CURLE_OK) {
            writeToLog("[Discord] cURL request failed: %s", curl_easy_strerror(res));
            fprintf(stderr, "curl_easy_perform() failed: %s\n", curl_easy_strerror(res));
        } else {
            if (response != NULL) {
                writeToLog("[Discord] cURL request successful. Response length: %zu", response->size());
                writeToLog("[Discord] Response Body: %s", response->c_str());
            } else {
                writeToLog("[Discord] cURL request successful. (No response expected)");
            }
        }
        
        curl_slist_free_all(headers);
        curl_easy_cleanup(curl);
    } else {
        writeToLog("[Discord] Failed to initialize cURL!");
    }
}

void refreshAuthTokenIfNeeded() {
    // check that we have a refresh token, if not, we can't do anything
    getRefreshTokenFromFile();
    if (refreshToken.empty()) { 
        writeToLog("[Discord] Cannot refresh: Refresh token is empty");
        return; 
    }

    // check if the auth token is expired or will expire in the next 5 minutes
    if (time(NULL) < authTokenExpiry - 300) { 
        return; 
    }

    writeToLog("[Discord] Auth token expired or expiring soon. Refreshing...");

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
    if (json_response == NULL) { 
        writeToLog("[Discord] Failed to parse JSON response from token refresh!");
        return; 
    }
    
    json_object* json_auth_token;
    json_object* json_refresh_token;
    json_object* json_expires_in;
    
    if (json_object_object_get_ex(json_response, "access_token", &json_auth_token)) {
        authToken = json_object_get_string(json_auth_token);
        writeToLog("[Discord] Successfully extracted new access_token");
    }
    if (json_object_object_get_ex(json_response, "refresh_token", &json_refresh_token)) {
        refreshToken = json_object_get_string(json_refresh_token);
        writeToLog("[Discord] Successfully extracted new refresh_token");
    }
    if (json_object_object_get_ex(json_response, "expires_in", &json_expires_in)) {
        authTokenExpiry = time(NULL) + json_object_get_int(json_expires_in);
    }

    json_object_put(json_response); // Frees the parsed json object

    // save the new refresh token to the sd card
    saveRefreshTokenToFile();
}

void authenticatedRequest(const char* url, const char* method, struct curl_slist* headers, const char* body, std::string* response) {
    refreshAuthTokenIfNeeded();
    
    if (authToken.empty()) {
        writeToLog("[Discord] WARNING: Attempting authenticated request but authToken is empty!");
    }

    std::string authHeader = "Authorization: Bearer " + authToken;
    struct curl_slist* authHeaders = curl_slist_append(headers, authHeader.c_str());
    sendRequest(url, method, authHeaders, body, response);
}

void discordCreateHeadlessSession(u64 titleId, std::string titleName, const bool includeToken) {
    writeToLog("[Discord] Creating/Updating session for TID: %016llX (%s)", (unsigned long long)titleId, titleName.c_str());
    
    std::string tinfoilUrl;
    char titleIdStr[17] = {0};
    snprintf(titleIdStr, sizeof(titleIdStr), "%016llX", (unsigned long long)titleId);
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
    json_object_object_add(json_activity, "platform", json_object_new_string("desktop"));
    json_object_object_add(json_activity, "name", json_object_new_string(titleName.c_str()));
    json_object_object_add(json_activity, "state", json_object_new_string("Running on Nintendo Switch"));
    
    json_object* json_assets = json_object_new_object();
    json_object_object_add(json_assets, "large_image", json_object_new_string(tinfoilUrl.c_str()));
    json_object_object_add(json_activity, "assets", json_assets);
    
    json_object_array_add(json_activities, json_activity);
    json_object_object_add(json_body, "activities", json_activities);
    
    if (includeToken && !sessionToken.empty()) {
        writeToLog("[Discord] Including session token in request.");
        json_object_object_add(json_body, "token", json_object_new_string(sessionToken.c_str()));
    }
    
    const char* body = json_object_get_string(json_body);

    struct curl_slist* headers = NULL;
    headers = curl_slist_append(headers, "Content-Type: application/json; charset=utf-8");

    std::string response;
    authenticatedRequest("https://discord.com/api/v9/users/@me/headless-sessions", "POST", headers, body, &response);

    json_object_put(json_body);

    json_object* json_response = json_tokener_parse(response.c_str());
    if (json_response == NULL) { 
        writeToLog("[Discord] Failed to parse headless session response JSON!");
        return; 
    }
    
    json_object* json_session_token;
    if (json_object_object_get_ex(json_response, "token", &json_session_token)) {
        sessionToken = json_object_get_string(json_session_token);
        sessionTokenExpiry = time(NULL) + 900; // 15 mins to be safe.
        writeToLog("[Discord] Successfully extracted session token.");
    } else {
        writeToLog("[Discord] Headless session response did NOT contain a session token.");
    }

    json_object_put(json_response);
}

void discordDeleteHeadlessSession() {
    writeToLog("[Discord] Deleting headless session...");
    
    if (sessionToken.empty()) { 
        writeToLog("[Discord] No active session token to delete.");
        return; 
    }

    json_object* json_body = json_object_new_object();
    json_object_object_add(json_body, "token", json_object_new_string(sessionToken.c_str()));
    const char* body = json_object_get_string(json_body);

    struct curl_slist* headers = NULL;
    headers = curl_slist_append(headers, "Content-Type: application/json; charset=utf-8");

    authenticatedRequest("https://discord.com/api/v9/users/@me/headless-sessions/delete", "POST", headers, body, NULL);

    json_object_put(json_body);
    
    // Clear the token so we don't try to use it again
    sessionToken = "";
    sessionTokenExpiry = 0;
    writeToLog("[Discord] Session deleted successfully.");
}