/* autogenerated by gensyscalls.py */
#include <asm/unistd.h>
#include <linux/err.h>
#include <machine/asm.h>

ENTRY(futimesat)
    ldr     ip, =__NR_futimesat
    b       __bionic_syscall_eabi
END(futimesat)
