/* autogenerated by gensyscalls.py */
#include <asm/unistd.h>
#include <linux/err.h>
#include <machine/asm.h>

ENTRY(__fcntl)
    ldr     ip, =__NR_fcntl
    b       __bionic_syscall_eabi
END(__fcntl)
