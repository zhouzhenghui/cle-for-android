LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

# Here we give our module name and sourcefile(s)
LOCAL_CFLAGS += -Wno-write-strings -DENV_ANDROID
LOCAL_CPPFLAGS += -Wno-write-strings -fexceptions -DENV_ANDROID
LOCAL_LDFLAGS += -Wno-write-strings -DENV_ANDROID

LOCAL_C_INCLUDES += ../../../../../include
LOCAL_C_INCLUDES += ../../project/RemoteCallServer 

#--------source file
MODULE_CXXSRCS := ../../project/RemoteCallServer/TestModule/TestModule_TestClass_VSBody.cpp ../../project/RemoteCallServer/TestModule/TestModule_TestClass_VSRegSkeleton.cpp ../../project/RemoteCallServer/TestModule/TestModule_VSMain.cpp ../../project/RemoteCallServer/RemoteCallServer_UUIDDef.cpp

LOCAL_SRC_FILES := ${MODULE_CXXSRCS}
LOCAL_LDLIBS := ../../../../../libs/armeabi/libstarlib.a

LOCAL_MODULE  := TestModule_android

include $(BUILD_SHARED_LIBRARY)  