$(call libc-add-cpu-variant-src,MEMCPY,arch-arm/generic/bionic/memcpy.S)
$(call libc-add-cpu-variant-src,MEMSET,arch-arm/generic/bionic/memset.S)
$(call libc-add-cpu-variant-src,BCOPY,string/bcopy.c)
$(call libc-add-cpu-variant-src,MEMMOVE,bionic/memmove.c.arm)