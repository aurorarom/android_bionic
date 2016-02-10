libc_bionic_src_files_arm += \
    arch-arm/cortex-a53/bionic/__strcat_chk.S \
    arch-arm/cortex-a53/bionic/__strcpy_chk.S \

libc_bionic_src_files_arm += \
    arch-arm/cortex-a7/bionic/memset.S \

libc_bionic_src_files_arm += \
    arch-arm/cortex-a15/bionic/strcat.S \
    arch-arm/cortex-a15/bionic/strcmp.S \
    arch-arm/cortex-a15/bionic/strcpy.S \
    arch-arm/cortex-a15/bionic/strlen.S \
    arch-arm/cortex-a15/bionic/stpcpy.S \
    arch-arm/krait/bionic/memmove.S

libc_bionic_src_files_arm += \
    arch-arm/cortex-a15/bionic/memchr.S

# Optimization not required for some targets
ifeq ($(TARGET_CPU_MEMCPY_OPT_DISABLE),true)
libc_bionic_src_files_arm += \
    arch-arm/cortex-a53/bionic/memcpy.S
else
libc_bionic_src_files_arm += \
    arch-arm/cortex-a15/bionic/memcpy.S
endif
