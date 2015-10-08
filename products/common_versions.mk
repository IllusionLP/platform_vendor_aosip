export SOLO_VERSION := $(PLATFORM_VERSION)-$(shell date -u +%Y%m%d)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.solo.version=$(SOLO_VERSION)

