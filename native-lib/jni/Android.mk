# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := hello-jni
LOCAL_SRC_FILES := src/hello-jni.c
LOCAL_C_INCLUDES += $(LOCAL_PATH)/inc/
#LOCAL_CFLAGS += -I$(LOCAL_PATH)/inc/
#LOCAL_CPPFLAGS :=
#LOCAL_LDLIBS := -lxyz
#LOCAL_EXPORT_CFLAGS := -DFOO=1 #applies for all modules
#LOCAL_CFLAGS := -DBAR=2  #applies only for this module

LOCAL_CPP_FEATURES := rtti
include $(BUILD_SHARED_LIBRARY)
