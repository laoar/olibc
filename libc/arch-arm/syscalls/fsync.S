/* autogenerated by gensyscalls.py */
#include <asm/unistd.h>
#include <linux/err.h>
#include <machine/asm.h>

ENTRY(fsync)
    ldr     ip, =__NR_fsync
    b       __bionic_syscall_eabi
END(fsync)
