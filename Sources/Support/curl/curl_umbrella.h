#include "/opt/devkitpro/portlibs/switch/include/curl/curl.h"

// Macros prevent Swift allowing use of this method
// Write a wrapper for each type you need:
static inline CURLcode curl_easy_setopt_long(CURL *handle, CURLoption option, long param) {
		return curl_easy_setopt(handle, option, param);
}

static inline CURLcode curl_easy_setopt_ptr(CURL *handle, CURLoption option, void *param) {
		return curl_easy_setopt(handle, option, param);
}

static inline CURLcode curl_easy_setopt_str(CURL *handle, CURLoption option, const char *param) {
		return curl_easy_setopt(handle, option, param);
}

static inline CURLcode curl_easy_setopt_off_t(CURL *handle, CURLoption option, curl_off_t param) {
		return curl_easy_setopt(handle, option, param);
}

// curl_easy_getinfo needs the same treatment

static inline CURLcode curl_easy_getinfo_long(CURL *handle, CURLINFO info, long *param) {
		return curl_easy_getinfo(handle, info, param);
}
static inline CURLcode curl_easy_getinfo_ptr(CURL *handle, CURLINFO info, void *param) {
		return curl_easy_getinfo(handle, info, param);
}
static inline CURLcode curl_easy_getinfo_str(CURL *handle, CURLINFO info, char **param) {
		return curl_easy_getinfo(handle, info, param);
}
static inline CURLcode curl_easy_getinfo_off_t(CURL *handle, CURLINFO info, curl_off_t *param) {
		return curl_easy_getinfo(handle, info, param);
}
