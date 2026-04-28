#include "logging.hpp"
#include <stdio.h>
#include <stdarg.h>
#include <time.h>

const char* LOG_FILE_PATH = "sdmc:/switchrpc_log.txt";

void initLog() {
    FILE* f = fopen(LOG_FILE_PATH, "w");
    if (f) {
        fprintf(f, "--- SwitchRPC Sysmodule Started ---\n");
        fclose(f);
    }
}

void writeToLog(const char* format, ...) {
    FILE* f = fopen(LOG_FILE_PATH, "a");
    if (!f) return;

    time_t now = time(NULL);
    struct tm *t = localtime(&now);
    
    if (t) {
        fprintf(f, "[%02d:%02d:%02d] ", t->tm_hour, t->tm_min, t->tm_sec);
    }

    va_list args;
    va_start(args, format);
    vfprintf(f, format, args);
    va_end(args);

    fprintf(f, "\n");
    
    fclose(f);
}