/* autogenerated by gensyscalls.py */
#include <asm/unistd.h>
#include <linux/err.h>
#include <machine/asm.h>

ENTRY(fchmod)
    ldr     ip, =__NR_fchmod
    b       __bionic_syscall_eabi
END(fchmod)
