/* autogenerated by gensyscalls.py */
#include <asm/unistd.h>
#include <linux/err.h>
#include <machine/asm.h>

ENTRY(semop)
    ldr     ip, =__NR_semop
    b       __bionic_syscall_eabi
END(semop)
