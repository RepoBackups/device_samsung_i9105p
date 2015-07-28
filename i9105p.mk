# Include common makefile
$(call inherit-product, device/samsung/galaxys2plus-common/common.mk)

LOCAL_PATH := device/samsung/i9105p

DEVICE_PACKAGE_OVERLAYS += $(COMMON_PATH)/overlay

# Audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default

PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

USE_CUSTOM_AUDIO_POLICY := 1

# GPS
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/configs/gps.cer:system/bin/gps.cer \
	$(COMMON_PATH)/configs/gps.conf:system/etc/gps.conf \
	$(COMMON_PATH)/configs/glconfig.xml:system/etc/gps/glconfig.xml


# Init scripts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/ramdisk/init.capri_ss_s2vep.rc:root/init.capri_ss_s2vep.rc \
	$(LOCAL_PATH)/ramdisk/init.recovery.capri_ss_s2vep.rc:root/init.recovery.capri_ss_s2vep.rc \
	$(LOCAL_PATH)/ramdisk/ueventd.capri_ss_s2vep.rc:root/ueventd.capri_ss_s2vep.rc \
	$(LOCAL_PATH)/ramdisk/fstab.capri_ss_s2vep:root/fstab.capri_ss_s2vep \
	$(COMMON_PATH)/ramdisk/init.bcm281x5.usb.rc:root/init.bcm281x5.usb.rc \
	$(COMMON_PATH)/ramdisk/init.log.rc:root/init.log.rc
 

# NFC packages
PRODUCT_PACKAGES += \
        libnfc-nci \
        libnfc_nci_jni \
        nfc_nci.bcm2079x.capri \
        NfcNci \
        Tag \
        com.android.nfc_extras

# NFCEE access control
NFCEE_ACCESS_PATH := $(LOCAL_PATH)/nfc/nfcee_access.xml

# NFC firmware
PRODUCT_COPY_FILES += \
        $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml \
        $(LOCAL_PATH)/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
        $(LOCAL_PATH)/nfc/bcm2079xB4_firmware_20793.ncd:system/vendor/firmware/bcm2079xB4_firmware_20793.ncd \
        $(LOCAL_PATH)/nfc/bcm2079xB4_pre_firmware_20793.ncd:system/vendor/firmware/bcm2079xB4_pre_firmware_20793.ncd

# NFC permissions
PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
        frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
        frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml
		
# Wi-Fi
PRODUCT_PACKAGES += \
	hostapd \
	dhcpcd.conf \
	wpa_supplicant \
	wpa_supplicant.conf

PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0

PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

$(call inherit-product, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)		
