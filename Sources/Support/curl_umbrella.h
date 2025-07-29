#include <sys/types.h>
#include <sys/socket.h>
#include <sys/select.h>
#include <time.h>
#include <stdint.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <netdb.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <fcntl.h>

// --- PATCH START ---

// If not defined, define socklen_t
#ifndef socklen_t
typedef __socklen_t socklen_t;
#endif

// If not defined, define time_t
#ifndef time_t
typedef __time_t time_t;
#endif

// If not defined, define struct sockaddr
#ifndef _SOCKADDR_DEFINED
#define _SOCKADDR_DEFINED
struct sockaddr {
		unsigned short sa_family;
		char sa_data[14];
};
#endif

// If not defined, define fd_set and friends
#ifndef fd_set
#define FD_SETSIZE 64
typedef struct {
		unsigned long fds_bits[(FD_SETSIZE+31)/32];
} fd_set;
#endif

// --- PATCH END ---

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
