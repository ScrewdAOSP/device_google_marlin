LOCAL_PATH := $(call my-dir)

ifeq ($(call is-vendor-board-platform,QCOM),true)

# HAL module implemenation stored in
# hw/<POWERS_HARDWARE_MODULE_ID>.<ro.hardware>.so
include $(CLEAR_VARS)

LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SHARED_LIBRARIES := liblog libcutils libdl
LOCAL_SRC_FILES := power.c metadata-parser.c utils.c list.c hint-data.c

# Include target-specific files.
ifeq ($(call is-board-platform-in-list, msm8996), true)
LOCAL_SRC_FILES += power-8996.c
endif

ifeq ($(TARGET_USES_INTERACTION_BOOST),true)
    LOCAL_CFLAGS += -DINTERACTION_BOOST
endif

ifneq ($(TARGET_USES_AOSP),true)
    LOCAL_CFLAGS += -DEXTRA_POWERHAL_HINTS
endif

LOCAL_CFLAGS += -Wno-unused-parameter

LOCAL_MODULE := power.marlin
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := qcom
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

endif
