/* autogenerated by gensyscalls.py */
#include <asm/unistd.h>
#include <linux/err.h>
#include <machine/asm.h>

ENTRY(__rt_sigtimedwait)
    ldr     ip, =__NR_rt_sigtimedwait
    b       __bionic_syscall_eabi
END(__rt_sigtimedwait)
