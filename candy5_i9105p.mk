$(call inherit-product, vendor/candy5/config/common_full_phone.mk)

$(call inherit-product, vendor/candy5/config/nfc_enhanced.mk)

$(call inherit-product, device/samsung/i9105p/full_i9105p.mk)

PRODUCT_DEVICE := i9105p
PRODUCT_NAME := candy5_i9105p

DEVICE_PACKAGE_OVERLAYS += device/samsung/i9105p/overlay-candy

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=s2vepxx \
	TARGET_DEVICE=s2vep \
	BUILD_FINGERPRINT="samsung/s2vepxx/s2vep:4.2.2/JDQ39/I9105PXXUBNG1:user/release-keys" \
	PRIVATE_BUILD_DESC="s2vepxx-user 4.2.2 JDQ39 I9105PXXUBNG1 release-keys"
