USE_CAMERA_STUB := true

# Board
TARGET_BOARD_PLATFORM := capri

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := capri

# CPU
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/galaxys2plus-common
TARGET_KERNEL_CONFIG := cyanogenmod_i9105p_defconfig

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/i9105p/ramdisk/fstab.capri_ss_s2vep

# NFC
BOARD_NFC_HAL_SUFFIX := capri

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/i9105p/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts
