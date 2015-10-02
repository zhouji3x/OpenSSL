# Copyright 2006 The Android Open Source Project

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := openssl

ifeq ($(HOST_OS),windows)
  LOCAL_LDLIBS += -lws2_32 -lgdi32
endif

ifeq ($(HOST_OS),linux)
  LOCAL_LDLIBS += -lrt -ldl -lpthread
  LOCAL_CXX_STL := libc++_static
endif

LOCAL_MODULE_TAGS := optional
LOCAL_STATIC_LIBRARIES := libssl-static2 libcrypto_static2
include $(LOCAL_PATH)/Apps-config-host.mk
include $(LOCAL_PATH)/android-config.mk
LOCAL_ADDITIONAL_DEPENDENCIES := $(LOCAL_PATH)/android-config.mk $(LOCAL_PATH)/Apps.mk
include $(BUILD_HOST_EXECUTABLE)
