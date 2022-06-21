LOCAL_PATH := $(call my-dir)

# libuvc.so

include $(CLEAR_VARS)

LOCAL_SRC_FILES += \
    src/ctrl.c \
    src/ctrl-gen.c \
    src/device.c \
    src/diag.c \
    src/frame.c \
    src/init.c \
    src/stream.c \
    src/misc.c

LOCAL_C_INCLUDES += \
    $(LOCAL_PATH)/include \
    $(LOCAL_PATH)/..\

LOCAL_EXPORT_C_INCLUDES := \
    $(LOCAL_PATH)/include \

LOCAL_SHARED_LIBRARIES := \
    usb-1.0 \

LOCAL_CFLAGS = \
    -DLOG_NDEBUG \
    -DANDROID_NDK \
    -Wno-unused-variable \
    -Wno-unused-parameter \
    -Wno-missing-prototypes \
    -Wno-undef \

LOCAL_EXPORT_LDLIBS := -llog

LOCAL_ARM_MODE := arm

LOCAL_MODULE := uvc

include $(BUILD_SHARED_LIBRARY)
