// look ik its the wrong name but i didnt like swiftc yelling at me to use CxxStdlib bc of the module name being similar to std (i had it as this before)

#include "/opt/devkitpro/devkitA64/aarch64-none-elf/include/stdio.h"
#include "/opt/devkitpro/devkitA64/aarch64-none-elf/include/string.h"
#include "/opt/devkitpro/devkitA64/aarch64-none-elf/include/unistd.h"
#include "/opt/devkitpro/devkitA64/aarch64-none-elf/include/fcntl.h"

void formatAddress(char *buffer, size_t size, const char *ip, int port) {
		snprintf(buffer, size, "http://%s:%d/", ip, port);
}

#include "/opt/devkitpro/devkitA64/aarch64-none-elf/include/errno.h"
