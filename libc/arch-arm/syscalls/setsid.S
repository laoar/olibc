/* autogenerated by gensyscalls.py */
#include <asm/unistd.h>
#include <linux/err.h>
#include <machine/asm.h>

ENTRY(setsid)
    ldr     ip, =__NR_setsid
    b       __bionic_syscall_eabi
END(setsid)
