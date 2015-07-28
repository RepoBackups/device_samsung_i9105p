USE_CAMERA_STUB := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/galaxys2plus-common/bluetooth/libbt_vndcfg.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/galaxys2plus-common/bluetooth

# Board
TARGET_BOARD_PLATFORM := capri

# Boot animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := capri

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging

# CPU
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true

# File system
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736

# Actual size is 4404019200.
# Reduced by 16384 to fix device encryption.
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4404002816

BOARD_CACHEIMAGE_PARTITION_SIZE := 1073741824
BOARD_FLASH_BLOCK_SIZE := 262144

# GPS
TARGET_SPECIFIC_HEADER_PATH := device/samsung/galaxys2plus-common/include

# Hardware
BOARD_HARDWARE_CLASS := device/samsung/galaxys2plus-common/cmhw/

# Hardware rendering
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/samsung/galaxys2plus-common/configs/egl.cfg
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_USE_MHEAP_SCREENSHOT := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS -DREFBASE_JB_MR1_COMPAT_SYMBOLS -DCAPRI_HWC

# healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd.capri

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/galaxys2plus-common
TARGET_KERNEL_CONFIG := cyanogenmod_i9105p_defconfig
BOARD_KERNEL_CMDLINE := console=ttyS0,115200n8 mem=832M@0xA2000000 androidboot.console=ttyS0 vc-cma-mem=0/176M@0xCB000000
BOARD_KERNEL_BASE := 0xa2000000
BOARD_KERNEL_PAGESIZE := 4096

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/i9105p/ramdisk/fstab.capri_ss_s2vep
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := ABGR_8888
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/galaxys2plus-common/ril/

# NFC
BOARD_NFC_HAL_SUFFIX := capri

# Wi-Fi
BOARD_HAVE_SAMSUNG_WIFI             := true
BOARD_WLAN_DEVICE                   := bcmdhd
BOARD_WLAN_DEVICE_REV               := bcm4330
WPA_SUPPLICANT_VERSION              := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER         := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB    := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER                := NL80211
BOARD_HOSTAPD_PRIVATE_LIB           := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_MODULE_NAME             := "dhd"
WIFI_DRIVER_MODULE_PATH             := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_PARAM           := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_AP              := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P             := "/system/etc/wifi/bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_STA             := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_MODULE_AP_ARG           := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_ARG              := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                           := 802_11_ABG

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/i9105p/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts
