LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := opusfile

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include $(LOCAL_PATH)/../ogg/include $(LOCAL_PATH)/../opus/include
LOCAL_CFLAGS := -O3


LOCAL_CPP_EXTENSION := .cpp

LOCAL_SRC_FILES := $(addprefix src/, $(notdir $(wildcard $(LOCAL_PATH)/src/*.c) $(wildcard $(LOCAL_PATH)/src/*.cpp)))

LOCAL_STATIC_LIBRARIES := ogg opus

LOCAL_SHARED_LIBRARIES :=

LOCAL_LDLIBS :=

include $(BUILD_STATIC_LIBRARY)

