# Camera
PRODUCT_PACKAGES += libion

# Fingerprint sensor type
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.fingerprint=fpc

# IMS
PRODUCT_PACKAGES += \
    com.android.ims.rcsmanager

# LiveDisplay native
PRODUCT_PACKAGES += \
    libjni_livedisplay

# NFC
PRODUCT_PACKAGES += \
    nfc_nci.pn54x.default

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/marlin/overlay-screwd

# Pixel Experience
PRODUCT_COPY_FILES += \
  device/google/marlin/nexus.xml:system/etc/sysconfig/nexus.xml

# Tethering
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true

# UI
PRODUCT_PROPERTY_OVERRIDES += \
    sys.use_fifo_ui=1

# Update engine
PRODUCT_PACKAGES += brillo_update_payload

# Include vendor partition in the otapackages
AB_OTA_PARTITIONS += vendor

PRODUCT_PACKAGES += \
    libminui \
    PresencePolling \
    qcrilmsgtunnel \
    libtinyxml \
    libLLVM \
    libmm-qcamera \
    libsensorndkbridge
