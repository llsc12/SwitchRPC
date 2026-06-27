// discord.cpp

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <string>
#include <vector>
#include <time.h>
#include <fstream>

#include <switch.h>
#include <json-c/json.h>
#include <curl/curl.h>

#include "discord.hpp"
#include "logging.hpp"
#include "utilities.hpp"

const char* clientId = "1249119754522857616";

#define PROFILES_PATH     "sdmc:/config/switchrpc_profiles.json"
#define LEGACY_TOKEN_PATH "sdmc:/config/switchrpc_token"
#define SESSIONS_PATH     "sdmc:/config/switchrpc_sessions.json"
#define LEGACY_SESSIONS_PATH "sdmc:/config/switchrpc_sessions"

// Global link table. Pointers returned by resolveLink() remain valid until the
// next loadLinks() call (which clears/rebuilds this vector). Callers must not
// hold a pointer across a loadLinks() call.
static std::vector<Link> g_links;
// true when the links were loaded from the legacy switchrpc_token file (so
// rotated tokens are written back to that file instead of profiles.json).
static bool g_legacyMode = false;

// ------------------------------------------------------------------
// small file helpers
// ------------------------------------------------------------------

static bool readFileContents(const char* path, std::string& out) {
    std::ifstream file(path);
    if (!file.is_open()) return false;
    out.assign((std::istreambuf_iterator<char>(file)), std::istreambuf_iterator<char>());
    file.close();
    return true;
}

static void stripTrailingNewlines(std::string& s) {
    while (!s.empty() && (s.back() == '\n' || s.back() == '\r')) {
        s.pop_back();
    }
}

// Write data to path via a temp file + rename so a crash mid-write cannot leave
// a half-written (corrupt) file. Falls back to a direct write if the rename
// path fails, so data is never lost.
static void writeFileAtomic(const char* path, const char* data) {
    std::string tmp = std::string(path) + ".tmp";

    {
        std::ofstream out(tmp, std::ios::trunc);
        if (!out.is_open()) {
            std::ofstream direct(path, std::ios::trunc);
            if (direct.is_open()) direct << data;
            return;
        }
        out << data;
        out.close();
    }

    // FAT/fsdev rename fails if the destination exists, so remove it first.
    remove(path);
    if (rename(tmp.c_str(), path) != 0) {
        // rename failed: fall back to a direct write so the data isn't lost.
        std::ofstream direct(path, std::ios::trunc);
        if (direct.is_open()) direct << data;
        remove(tmp.c_str());
    }
}

// ------------------------------------------------------------------
// switch_uid serialization
// ------------------------------------------------------------------

std::string accountUidToString(const AccountUid& uid) {
    char buf[34];
    snprintf(buf, sizeof(buf), "%016llx-%016llx",
             (unsigned long long)uid.uid[0], (unsigned long long)uid.uid[1]);
    return std::string(buf);
}

bool accountUidFromString(const std::string& s, AccountUid& out) {
    out.uid[0] = 0;
    out.uid[1] = 0;
    size_t dash = s.find('-');
    if (dash == std::string::npos) return false;
    std::string a = s.substr(0, dash);
    std::string b = s.substr(dash + 1);
    if (a.empty() || b.empty()) return false;
    out.uid[0] = (u64)strtoull(a.c_str(), NULL, 16);
    out.uid[1] = (u64)strtoull(b.c_str(), NULL, 16);
    return true;
}

static bool uidIsZero(const AccountUid& uid) {
    return uid.uid[0] == 0 && uid.uid[1] == 0;
}

// ------------------------------------------------------------------
// loadLinks / resolveLink
// ------------------------------------------------------------------

// helper: read a string member of a json object into dst (leaves dst unchanged
// if missing). Copies into std::string so it is safe after json_object_put.
static void getJsonString(json_object* obj, const char* key, std::string& dst) {
    json_object* v;
    if (json_object_object_get_ex(obj, key, &v)) {
        const char* s = json_object_get_string(v);
        if (s != NULL) dst.assign(s);
    }
}

static void parseLinksFromJson(json_object* root) {
    json_object* links_arr;
    if (!json_object_object_get_ex(root, "links", &links_arr) ||
        json_object_get_type(links_arr) != json_type_array) {
        return;
    }

    int n = json_object_array_length(links_arr);
    for (int i = 0; i < n; i++) {
        json_object* doc = json_object_array_get_idx(links_arr, i);
        if (doc == NULL) continue;

        Link l;
        getJsonString(doc, "switch_uid", l.switchUidStr);
        getJsonString(doc, "discord_id", l.discordId);
        getJsonString(doc, "discord_username", l.discordUsername);
        getJsonString(doc, "refresh_token", l.refreshToken);

        if (l.switchUidStr.empty()) {
            // match the config app, which skips entries with no switch_uid rather
            // than silently promoting them to the default/wildcard link.
            continue;
        }
        accountUidFromString(l.switchUidStr, l.switchUid);

        g_links.push_back(l);
    }
}

std::vector<Link>& loadLinks() {
    g_links.clear();
    g_legacyMode = false;

    // If profiles.json exists at all it is authoritative — never fall back to
    // the legacy token (the config app migrates based on file existence, so the
    // two sides must agree). A present-but-empty/unparseable file => zero links.
    std::string contents;
    bool profilesExist = readFileContents(PROFILES_PATH, contents);
    if (profilesExist) {
        if (!contents.empty()) {
            json_object* root = json_tokener_parse(contents.c_str());
            if (root != NULL) {
                parseLinksFromJson(root);
                json_object_put(root);
                writeToLog("[Discord] Loaded %d link(s) from profiles.json", (int)g_links.size());
            } else {
                writeToLog("[Discord] profiles.json present but unparseable; treating as zero links.");
            }
        } else {
            writeToLog("[Discord] profiles.json present but empty; treating as zero links.");
        }
        return g_links;
    }

    // No profiles.json: legacy fallback — single default/wildcard link backed by
    // switchrpc_token (rotated tokens are written back to that file).
    std::string legacy;
    if (readFileContents(LEGACY_TOKEN_PATH, legacy)) {
        stripTrailingNewlines(legacy);
        if (!legacy.empty()) {
            Link l;
            l.switchUidStr = "0000000000000000-0000000000000000";
            accountUidFromString(l.switchUidStr, l.switchUid);
            l.refreshToken = legacy;
            g_links.push_back(l);
            g_legacyMode = true;
            writeToLog("[Discord] Loaded legacy refresh token as a single default link.");
            return g_links;
        }
    }

    writeToLog("[Discord] No links found (no profiles.json and no legacy token).");
    return g_links;
}

Link* resolveLink(const AccountUid& uid) {
    Link* def = NULL;
    for (size_t i = 0; i < g_links.size(); i++) {
        Link& l = g_links[i];
        if (l.switchUid.uid[0] == uid.uid[0] && l.switchUid.uid[1] == uid.uid[1]) {
            return &l;
        }
        if (uidIsZero(l.switchUid)) {
            def = &l;
        }
    }
    return def;
}

// ------------------------------------------------------------------
// persistence of rotated refresh tokens
// ------------------------------------------------------------------

void persistLinkRefreshToken(const Link& link) {
    if (g_legacyMode) {
        std::ofstream file(LEGACY_TOKEN_PATH, std::ios::trunc);
        if (!file.is_open()) {
            writeToLog("[Discord] Failed to open legacy token file for writing!");
            return;
        }
        file << link.refreshToken;
        file.close();
        writeToLog("[Discord] Saved rotated refresh token to legacy file.");
        return;
    }

    // read-modify-write profiles.json, preserving every other entry.
    std::string contents;
    readFileContents(PROFILES_PATH, contents);

    json_object* root = contents.empty() ? NULL : json_tokener_parse(contents.c_str());
    if (root == NULL) {
        root = json_object_new_object();
        json_object_object_add(root, "version", json_object_new_int(1));
    }

    json_object* links_arr;
    if (!json_object_object_get_ex(root, "links", &links_arr) ||
        json_object_get_type(links_arr) != json_type_array) {
        links_arr = json_object_new_array();
        json_object_object_add(root, "links", links_arr); // root takes ownership
    }

    bool found = false;
    int n = json_object_array_length(links_arr);
    for (int i = 0; i < n; i++) {
        json_object* doc = json_object_array_get_idx(links_arr, i);
        if (doc == NULL) continue;
        json_object* juid;
        if (json_object_object_get_ex(doc, "switch_uid", &juid)) {
            const char* s = json_object_get_string(juid);
            if (s != NULL && link.switchUidStr == s) {
                // object_add replaces existing key, freeing the old value.
                json_object_object_add(doc, "refresh_token",
                                       json_object_new_string(link.refreshToken.c_str()));
                found = true;
                break;
            }
        }
    }

    if (!found) {
        // The entry is gone (e.g. the config app unlinked this profile while a
        // session was active). Do NOT resurrect it — skip persistence.
        writeToLog("[Discord] Link %s not in profiles.json; not persisting (it may have been unlinked).",
                   link.switchUidStr.c_str());
        json_object_put(root);
        return;
    }

    writeFileAtomic(PROFILES_PATH, json_object_to_json_string(root));
    writeToLog("[Discord] Persisted rotated refresh token to profiles.json for %s",
               link.switchUidStr.c_str());

    json_object_put(root);
}

// ------------------------------------------------------------------
// sessions bookkeeping (switchrpc_sessions.json)
// ------------------------------------------------------------------

// Upsert (or, when token is empty, remove) the session entry for a given uid in
// switchrpc_sessions.json. Keeps at most one entry per switch_uid so the file
// stays bounded (the Switch runs one app at a time). Rebuilds the array rather
// than relying on json_object_array_del_idx for older json-c compatibility.
static void upsertSessionEntry(const std::string& uidStr, const std::string& token) {
    std::string contents;
    readFileContents(SESSIONS_PATH, contents);
    json_object* oldRoot = contents.empty() ? NULL : json_tokener_parse(contents.c_str());

    json_object* newRoot = json_object_new_object();
    json_object* newArr = json_object_new_array();
    json_object_object_add(newRoot, "sessions", newArr); // newRoot takes ownership

    if (oldRoot != NULL) {
        json_object* sessions;
        if (json_object_object_get_ex(oldRoot, "sessions", &sessions) &&
            json_object_get_type(sessions) == json_type_array) {
            int n = json_object_array_length(sessions);
            for (int i = 0; i < n; i++) {
                json_object* doc = json_object_array_get_idx(sessions, i);
                if (doc == NULL) continue;
                json_object* juid;
                json_object* jtok;
                if (!json_object_object_get_ex(doc, "switch_uid", &juid) ||
                    !json_object_object_get_ex(doc, "token", &jtok)) continue;
                const char* u = json_object_get_string(juid);
                const char* t = json_object_get_string(jtok);
                std::string us = (u != NULL) ? u : "";
                std::string ts = (t != NULL) ? t : "";
                if (us == uidStr) continue;       // drop the old entry for this uid
                if (us.empty() || ts.empty()) continue;
                json_object* e = json_object_new_object();
                json_object_object_add(e, "switch_uid", json_object_new_string(us.c_str()));
                json_object_object_add(e, "token", json_object_new_string(ts.c_str()));
                json_object_array_add(newArr, e); // newArr takes ownership
            }
        }
        json_object_put(oldRoot);
    }

    // add the updated entry unless this is a removal (empty token)
    if (!token.empty()) {
        json_object* e = json_object_new_object();
        json_object_object_add(e, "switch_uid", json_object_new_string(uidStr.c_str()));
        json_object_object_add(e, "token", json_object_new_string(token.c_str()));
        json_object_array_add(newArr, e); // newArr takes ownership
    }

    if (json_object_array_length(newArr) == 0) {
        // nothing left to track: drop the file entirely
        remove(SESSIONS_PATH);
        json_object_put(newRoot);
        return;
    }

    writeFileAtomic(SESSIONS_PATH, json_object_to_json_string(newRoot));
    writeToLog("[Discord] Updated sessions.json for %s", uidStr.c_str());

    json_object_put(newRoot);
}

// ------------------------------------------------------------------
// curl helpers (unchanged behaviour)
// ------------------------------------------------------------------

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
bool sendRequest(const char* url, const char* method, struct curl_slist* headers, const char* body, std::string* response) {
    writeToLog("[Discord] Sending %s request to %s", method, url);
    if (body != NULL) {
        writeToLog("[Discord] Request Body: %s", body);
    }

    CURL *curl = curl_easy_init();
    if(curl) {
        curl_easy_setopt(curl, CURLOPT_URL, url);
        curl_easy_setopt(curl, CURLOPT_CUSTOMREQUEST, method);
        curl_slist* reqHeaders = NULL;
        reqHeaders = curl_slist_append(reqHeaders, "Accept: application/json");
        // discord social sdk sends these
        reqHeaders = curl_slist_append(reqHeaders, "User-Agent: Discord Embedded/0.0.8");
        // x super props
        /*
        {
            "browser":"Discord Embedded",
            "browser_user_agent":"Discord Embedded/0.0.8",
            "browser_version":"0.0.8",
            "client_build_number":304683,
            "design_id":0,
            "os":"Unknown",
            "release_channel":"unknown"
        }
        */
        // basically static, hardcoding b64 string.
        reqHeaders = curl_slist_append(reqHeaders, "X-Super-Properties: eyJicm93c2VyIjoiRGlzY29yZCBFbWJlZGRlZCIsImJyb3dzZXJfdXNlcl9hZ2VudCI6IkRpc2NvcmQgRW1iZWRkZWQvMC4wLjgiLCJicm93c2VyX3ZlcnNpb24iOiIwLjAuOCIsImNsaWVudF9idWlsZF9udW1iZXIiOjMwNDY4MywiZGVzaWduX2lkIjowLCJvcyI6IlVua25vd24iLCJyZWxlYXNlX2NoYW5uZWwiOiJ1bmtub3duIn0K");
        // host
        if (strstr(url, "discord.com") != NULL) {
            reqHeaders = curl_slist_append(reqHeaders, "Host: discord.com");
        } else if (strstr(url, "gaming-sdk.com") != NULL) {
            reqHeaders = curl_slist_append(reqHeaders, "Host: gaming-sdk.com");
        }

        reqHeaders = curl_slist_append(reqHeaders, "Connection: close");

        // iterate through the provided headers and add them to the request, overriding any duplicates of the default headers we set above
        for (curl_slist* header = headers; header != NULL; header = header->next) {
            reqHeaders = curl_slist_append(reqHeaders, header->data);
        }
        curl_easy_setopt(curl, CURLOPT_HTTPHEADER, reqHeaders);
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

        curl_easy_setopt(curl, CURLOPT_VERBOSE, 0L);
        curl_easy_setopt(curl, CURLOPT_DEBUGFUNCTION, curlDebugCallback);
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

        long http_code = 0;
        curl_easy_getinfo(curl, CURLINFO_RESPONSE_CODE, &http_code);
        bool success = (http_code >= 200 && http_code < 300);

        curl_slist_free_all(reqHeaders);
        curl_slist_free_all(headers);
        curl_slist_free_all(dns_cache);
        curl_easy_cleanup(curl);
        return success;
    } else {
        writeToLog("[Discord] Failed to initialize cURL!");
        curl_slist_free_all(headers);
        return false;
    }
}

// ------------------------------------------------------------------
// per-link auth
// ------------------------------------------------------------------

bool refreshAuthTokenIfNeeded(Link& link) {
    if (link.refreshToken.empty()) {
        writeToLog("[Discord] Cannot refresh: refresh token is empty for %s", link.switchUidStr.c_str());
        return false;
    }

    // still valid (with a 5 minute safety margin)?
    if (!link.authToken.empty() && time(NULL) < link.authTokenExpiry - 300) {
        writeToLog("[Discord] Auth token still valid for %s.", link.switchUidStr.c_str());
        return true;
    }

    writeToLog("[Discord] Refreshing auth token for %s...", link.switchUidStr.c_str());

    const char* url = "https://gaming-sdk.com/api/v9/oauth2/token";
    const char* method = "POST";
    struct curl_slist* headers = NULL;
    headers = curl_slist_append(headers, "Content-Type: application/x-www-form-urlencoded; charset=utf-8");
    std::string bodyStr = "grant_type=refresh_token&refresh_token=" + link.refreshToken + "&client_id=" + clientId;

    std::string response = "";
    bool success = sendRequest(url, method, headers, bodyStr.c_str(), &response);

    if (!success) {
        writeToLog("[Discord] Failed to send request for auth token refresh!");
        return false;
    }

    json_object* json_response = json_tokener_parse(response.c_str());
    if (json_response == NULL) {
        writeToLog("[Discord] Failed to parse JSON response from token refresh!");
        return false;
    }

    bool rotated = false;
    json_object* json_auth_token;
    json_object* json_refresh_token;
    json_object* json_expires_in;

    if (json_object_object_get_ex(json_response, "access_token", &json_auth_token)) {
        const char* s = json_object_get_string(json_auth_token);
        if (s != NULL) link.authToken.assign(s);
        writeToLog("[Discord] Extracted new access_token for %s", link.switchUidStr.c_str());
    }
    if (json_object_object_get_ex(json_response, "refresh_token", &json_refresh_token)) {
        const char* s = json_object_get_string(json_refresh_token);
        if (s != NULL) {
            link.refreshToken.assign(s);
            rotated = true;
        }
    }
    if (json_object_object_get_ex(json_response, "expires_in", &json_expires_in)) {
        link.authTokenExpiry = time(NULL) + json_object_get_int(json_expires_in);
    }

    json_object_put(json_response);

    if (rotated) {
        persistLinkRefreshToken(link);
    }

    return !link.authToken.empty();
}

bool authenticatedRequest(Link& link, const char* url, const char* method, struct curl_slist* headers, const char* body, std::string* response) {
    refreshAuthTokenIfNeeded(link);

    if (link.authToken.empty()) {
        writeToLog("[Discord] WARNING: authenticated request but authToken empty for %s!", link.switchUidStr.c_str());
        curl_slist_free_all(headers); // sendRequest would have owned/freed these
        return false;
    }

    std::string authHeader = "Authorization: Bearer " + link.authToken;
    struct curl_slist* authHeaders = curl_slist_append(headers, authHeader.c_str());
    return sendRequest(url, method, authHeaders, body, response);
}

// ------------------------------------------------------------------
// headless session management (per-link)
// ------------------------------------------------------------------

void discordCleanupStaleSessions() {
    // legacy plaintext sessions file -> delete best-effort + log
    {
        std::ifstream legacy(LEGACY_SESSIONS_PATH);
        if (legacy.is_open()) {
            legacy.close();
            writeToLog("[Discord] Found legacy plaintext sessions file; deleting best-effort.");
            if (remove(LEGACY_SESSIONS_PATH) != 0) {
                writeToLog("[Discord] Failed to remove legacy plaintext sessions file.");
            }
        }
    }

    std::string contents;
    if (!readFileContents(SESSIONS_PATH, contents)) {
        writeToLog("[Discord] No sessions.json found. Skipping cleanup.");
        return;
    }
    if (contents.empty()) {
        remove(SESSIONS_PATH);
        return;
    }

    json_object* root = json_tokener_parse(contents.c_str());
    if (root == NULL) {
        writeToLog("[Discord] sessions.json not valid JSON; deleting best-effort.");
        remove(SESSIONS_PATH);
        return;
    }

    json_object* sessions;
    if (json_object_object_get_ex(root, "sessions", &sessions) &&
        json_object_get_type(sessions) == json_type_array) {

        int n = json_object_array_length(sessions);
        writeToLog("[Discord] Cleaning up %d recorded session(s)...", n);

        for (int i = 0; i < n; i++) {
            json_object* doc = json_object_array_get_idx(sessions, i);
            if (doc == NULL) continue;

            json_object* juid;
            json_object* jtok;
            if (!json_object_object_get_ex(doc, "switch_uid", &juid) ||
                !json_object_object_get_ex(doc, "token", &jtok)) {
                writeToLog("[Discord] Skipping malformed session entry.");
                continue;
            }

            // copy out of json before any json_object_put
            const char* uidRaw = json_object_get_string(juid);
            const char* tokRaw = json_object_get_string(jtok);
            std::string uidStr = (uidRaw != NULL) ? uidRaw : "";
            std::string token  = (tokRaw != NULL) ? tokRaw : "";
            if (token.empty()) continue;

            AccountUid uid {};
            accountUidFromString(uidStr, uid);
            Link* link = resolveLink(uid);
            if (link == NULL) {
                writeToLog("[Discord] No link for session uid %s; skipping (cannot delete).", uidStr.c_str());
                continue;
            }

            json_object* json_body = json_object_new_object();
            json_object_object_add(json_body, "token", json_object_new_string(token.c_str()));
            const char* body = json_object_get_string(json_body);

            struct curl_slist* headers = NULL;
            headers = curl_slist_append(headers, "Content-Type: application/json; charset=utf-8");

            writeToLog("[Discord] Deleting stale session for uid %s...", uidStr.c_str());
            authenticatedRequest(*link, "https://discord.com/api/v9/users/@me/headless-sessions/delete",
                                 "POST", headers, body, NULL);

            json_object_put(json_body);
        }
    }

    json_object_put(root);

    if (remove(SESSIONS_PATH) == 0) {
        writeToLog("[Discord] Cleared sessions.json.");
    } else {
        writeToLog("[Discord] Failed to remove sessions.json after cleanup.");
    }
}

bool discordCreateHeadlessSession(Link& link, u64 titleId, std::string titleName, const bool includeToken) {
    writeToLog("[Discord] Creating/Updating session for TID: %016llX (%s) on %s",
               (unsigned long long)titleId, titleName.c_str(), link.switchUidStr.c_str());

    // tries to fetch eshop icon, else falls back to tinfoil media icon
    std::string iconUrl;
    if (!fetchEshopIconUrl(titleId, iconUrl)) {
        char titleIdStr[17] = {0};
        snprintf(titleIdStr, sizeof(titleIdStr), "%016llX", (unsigned long long)titleId);
        iconUrl = std::string("https://tinfoil.media/ti/") + titleIdStr + "/512/512/";
        writeToLog("[Discord] Falling back to tinfoil for icon: %s", iconUrl.c_str());
    }

    // make json body
    json_object* json_body = json_object_new_object();
    json_object* json_activities = json_object_new_array();
    json_object* json_activity = json_object_new_object();
    json_object_object_add(json_activity, "type", json_object_new_string("0"));
    json_object_object_add(json_activity, "flags", json_object_new_string("0"));
    json_object_object_add(json_activity, "application_id", json_object_new_string(clientId));
    json_object_object_add(json_activity, "platform", json_object_new_string("desktop"));
    json_object_object_add(json_activity, "name", json_object_new_string(titleName.c_str()));
    json_object_object_add(json_activity, "state", json_object_new_string("Nintendo Switch"));

    json_object* json_assets = json_object_new_object();
    json_object_object_add(json_assets, "large_image", json_object_new_string(iconUrl.c_str()));
    json_object_object_add(json_activity, "assets", json_assets);

    json_object_array_add(json_activities, json_activity);
    json_object_object_add(json_body, "activities", json_activities);

    if (includeToken && !link.sessionToken.empty()) {
        writeToLog("[Discord] Including session token in request.");
        json_object_object_add(json_body, "token", json_object_new_string(link.sessionToken.c_str()));
    }

    const char* body = json_object_get_string(json_body);

    struct curl_slist* headers = NULL;
    headers = curl_slist_append(headers, "Content-Type: application/json; charset=utf-8");

    std::string response;
    bool success = authenticatedRequest(link, "https://discord.com/api/v9/users/@me/headless-sessions", "POST", headers, body, &response);
    if (!success) {
        writeToLog("[Discord] Failed to create/update headless session!");
        json_object_put(json_body);

        // if the attempt included an existing session token, retry once without
        // it in case the (possibly stale) token was the problem.
        if (includeToken) {
            writeToLog("[Discord] Retrying headless session creation without session token...");
            return discordCreateHeadlessSession(link, titleId, titleName, false);
        }
        return false;
    }

    json_object_put(json_body);

    json_object* json_response = json_tokener_parse(response.c_str());
    if (json_response == NULL) {
        writeToLog("[Discord] Failed to parse headless session response JSON!");
        return false;
    }

    bool stored = false;
    json_object* json_session_token;
    if (json_object_object_get_ex(json_response, "token", &json_session_token)) {
        const char* s = json_object_get_string(json_session_token);
        std::string newToken = (s != NULL) ? s : "";

        if (!newToken.empty() && newToken != link.sessionToken) {
            // a new session token: upsert it (keyed by this link's uid, one entry
            // per uid) so stale-cleanup can delete it later with the right creds.
            upsertSessionEntry(link.switchUidStr, newToken);
        }

        if (!newToken.empty()) {
            link.sessionToken = newToken;
            link.sessionTokenExpiry = time(NULL) + 900; // 15 mins to be safe.
            stored = true;
            writeToLog("[Discord] Stored session token for %s.", link.switchUidStr.c_str());
        }
    } else {
        writeToLog("[Discord] Headless session response did NOT contain a session token. That shouldn't happen if the session was created successfully and discord returned 200.");
    }

    json_object_put(json_response);
    return stored;
}

void discordDeleteHeadlessSession(Link& link) {
    writeToLog("[Discord] Deleting headless session for %s...", link.switchUidStr.c_str());

    if (link.sessionToken.empty()) {
        writeToLog("[Discord] No active session token to delete.");
        return;
    }

    json_object* json_body = json_object_new_object();
    json_object_object_add(json_body, "token", json_object_new_string(link.sessionToken.c_str()));
    const char* body = json_object_get_string(json_body);

    struct curl_slist* headers = NULL;
    headers = curl_slist_append(headers, "Content-Type: application/json; charset=utf-8");

    authenticatedRequest(link, "https://discord.com/api/v9/users/@me/headless-sessions/delete", "POST", headers, body, NULL);

    json_object_put(json_body);

    // drop this uid's entry from sessions.json (it is deleted server-side now).
    upsertSessionEntry(link.switchUidStr, "");

    // Clear the token so we don't try to use it again
    link.sessionToken = "";
    link.sessionTokenExpiry = 0;
    writeToLog("[Discord] Session deleted.");
}
