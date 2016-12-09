# Copyright 2006 The Android Open Source Project

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_IS_HOST_MODULE := true
LOCAL_MODULE := openssl
#LOCAL_MODULE_HOST_OS := linux windows

LOCAL_LDLIBS_windows += -lws2_32 -lgdi32

LOCAL_LDLIBS_linux += -lrt -ldl -lpthread
LOCAL_CXX_STL_linux := libc++_static

LOCAL_MODULE_TAGS := optional
LOCAL_STATIC_LIBRARIES := libssl-static2 libcrypto_static2
include $(LOCAL_PATH)/Apps-config-host.mk
include $(LOCAL_PATH)/android-config.mk
LOCAL_ADDITIONAL_DEPENDENCIES := $(LOCAL_PATH)/android-config.mk $(LOCAL_PATH)/Apps.mk
include $(BUILD_HOST_EXECUTABLE)
