/* autogenerated by gensyscalls.py */
#include <asm/unistd.h>
#include <linux/err.h>
#include <machine/asm.h>

ENTRY(recvfrom)
    ldr     ip, =__NR_recvfrom
    b       __bionic_long_syscall_eabi
END(recvfrom)
