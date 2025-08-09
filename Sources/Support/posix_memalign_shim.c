#include <stddef.h>
#include <malloc.h>
// POSIX: alignment must be power of two and multiple of sizeof(void*)
// size must be nonzero

int posix_memalign(void **memptr, size_t alignment, size_t size) {
	if (!memptr || alignment % sizeof(void*) != 0 || (alignment & (alignment - 1)) != 0 || size == 0) {
		return 22; // EINVAL
	}
	void *ptr = memalign(alignment, size);
	if (!ptr) {
		return 12; // ENOMEM
	}
	*memptr = ptr;
	return 0;
}

// _getentropy_r stub
int _getentropy_r(void *reent, void *buffer, size_t length) { return -1; }

// if NXSysmodule defined, this is a sysmodule. it needs newlib heap configuration.
#if defined(NXSysmodule) && defined(__SWITCH__)
// Include the main libnx system header, for Switch development
#include "/opt/devkitpro/libnx/include/switch.h"

// Size of the inner heap (adjust as necessary).
#define INNER_HEAP_SIZE 0x80000

// Sysmodules should not use applet*.
u32 __nx_applet_type = AppletType_None;

// Sysmodules will normally only want to use one FS session.
u32 __nx_fs_num_sessions = 1;

// Newlib heap configuration function (makes malloc/free work).
void __libnx_initheap(void) {
	static u8 inner_heap[INNER_HEAP_SIZE];
	extern void* fake_heap_start;
	extern void* fake_heap_end;
	
	// Configure the newlib heap.
	fake_heap_start = inner_heap;
	fake_heap_end   = inner_heap + sizeof(inner_heap);
}
#endif
