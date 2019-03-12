# Release name
PRODUCT_RELEASE_NAME := fujisan

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := ZTE
PRODUCT_MANUFACTURER := ZTE

# The below values will be replaced for compatibility with OTAs!
PRODUCT_MODEL := ZTE Z999
PRODUCT_DEVICE := fujisan
PRODUCT_NAME := omni_fujisan