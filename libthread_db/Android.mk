LOCAL_PATH:= $(call my-dir)

#
# static
#

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	libthread_db.c

LOCAL_MODULE:= libthread_db
LOCAL_ADDITIONAL_DEPENDENCIES := $(LOCAL_PATH)/Android.mk

include $(BUILD_STATIC_LIBRARY)

#
# shared
#

include $(CLEAR_VARS)

LOCAL_WHOLE_STATIC_LIBRARIES := libthread_db
LOCAL_MODULE := libthread_db
LOCAL_ADDITIONAL_DEPENDENCIES := $(LOCAL_PATH)/Android.mk
ifeq ($(SINGLE_BINARY_SUPPORT),true)
  LOCAL_SHARED_LIBRARIES := olibc
else
  LOCAL_SHARED_LIBRARIES := libdl libc
endif
LOCAL_ALLOW_UNDEFINED_SYMBOLS := false
LOCAL_SYSTEM_SHARED_LIBRARIES :=

include $(BUILD_SHARED_LIBRARY)
