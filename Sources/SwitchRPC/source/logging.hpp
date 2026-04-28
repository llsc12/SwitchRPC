#pragma once

// clears old logs
void initLog();

// writes a formatted string to the log file with a timestamp ykyk
void writeToLog(const char* format, ...);