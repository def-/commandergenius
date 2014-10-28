LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := opus

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include $(LOCAL_PATH)/src $(LOCAL_PATH)/src/float $(LOCAL_PATH)/src/fixed
LOCAL_CFLAGS := -O3 -DHAVE_CONFIG_H


LOCAL_CPP_EXTENSION := .cpp

LOCAL_SRC_FILES := $(addprefix src/, $(notdir $(wildcard $(LOCAL_PATH)/src/*.c) $(wildcard $(LOCAL_PATH)/src/*.cpp)))

LOCAL_STATIC_LIBRARIES := 

LOCAL_SHARED_LIBRARIES := 

LOCAL_LDLIBS :=

include $(BUILD_STATIC_LIBRARY)

