LOCAL_PATH := device/samsung/i9105p

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay


# Use high-density artwork where available
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

USE_CUSTOM_AUDIO_POLICY := 1

# Camera, this will fix Video Recording
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/camera/recording.xml:system/etc/media_codecs_ffmpeg.xml

# CandyRoms Animation Boot
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/480.zip:system/media/bootanimation.zip


# Samsung Galaxy SII Plus Packages
PRODUCT_PACKAGES += \
	SamsungServiceMode \
	charger_res_images \
	com.android.future.usb.accessory

# GPS
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/gps.cer:system/bin/gps.cer \
	$(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
	$(LOCAL_PATH)/configs/glconfig.xml:system/etc/gps/glconfig.xml


# Init scripts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/ramdisk/init.capri_ss_s2vep.rc:root/init.capri_ss_s2vep.rc \
	$(LOCAL_PATH)/ramdisk/init.recovery.capri_ss_s2vep.rc:root/init.recovery.capri_ss_s2vep.rc \
	$(LOCAL_PATH)/ramdisk/ueventd.capri_ss_s2vep.rc:root/ueventd.capri_ss_s2vep.rc \
	$(LOCAL_PATH)/ramdisk/fstab.capri_ss_s2vep:root/fstab.capri_ss_s2vep \
	$(LOCAL_PATH)/ramdisk/init.bcm281x5.usb.rc:root/init.bcm281x5.usb.rc \
	$(LOCAL_PATH)/ramdisk/init.log.rc:root/init.log.rc
	
# Keylayouts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keylayouts/bcm_headset.kl:system/usr/keylayout/bcm_headset.kl \
	$(LOCAL_PATH)/keylayouts/bcm_keypad_v2.kl:system/usr/keylayout/bcm_keypad_v2.kl \
	$(LOCAL_PATH)/keylayouts/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	$(LOCAL_PATH)/keylayouts/samsung-keypad.kl:system/usr/keylayout/samsung-keypad.kl \
	$(LOCAL_PATH)/keylayouts/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
	$(LOCAL_PATH)/keylayouts/sii9234_rcp.kl:system/usr/keylayout/sii9234_rcp.kl	

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    librs_jni	
	
# Media
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml	
 

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
		
# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml		
		
# Wi-Fi
PRODUCT_PACKAGES += \
	hostapd \
	dhcpcd.conf \
	wpa_supplicant \
	wpa_supplicant.conf

PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

$(call inherit-product, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)

# Inherit device properties
$(call inherit-product, device/samsung/i9105p/properties.mk)

# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
	ro.kernel.android.checkjni=0 \
	dalvik.vm.checkjni=false

# Override phone-hdpi-512-dalvik-heap to match value on stock
# - helps pass CTS com.squareup.okhttp.internal.spdy.Spdy3Test#tooLargeDataFrame)
# (property override must come before included property)
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.heapgrowthlimit=56m

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)		

$(call inherit-product-if-exists, vendor/samsung/galaxys2plus-common/galaxys2plus-common-vendor.mk)
