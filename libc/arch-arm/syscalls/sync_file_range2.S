/* autogenerated by gensyscalls.py */
#include <asm/unistd.h>
#include <linux/err.h>
#include <machine/asm.h>

ENTRY(sync_file_range2)
    ldr     ip, =__NR_sync_file_range2
    b       __bionic_long_syscall_eabi
END(sync_file_range2)
