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