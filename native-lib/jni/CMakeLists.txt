cmake_minimum_required(VERSION 3.4.1)


#include("/Users/karthikc/Library/Android/sdk/ndk-bundle/build/cmake/android.toolchain.cmake")
find_package(Java REQUIRED)
#find_package(JNI REQUIRED)

message(JNI Include Dirs: ${JNI_INCLUDE_DIRS})
include_directories(${JNI_INCLUDE_DIRS})

project(hello-jni)

add_library(hello-jni SHARED ${CMAKE_SOURCE_DIR}/src/hello-jni.c)

target_include_directories(hello-jni PUBLIC ${CMAKE_SOURCE_DIR}/inc)


#Link necessary libs with hello-jni lib
target_link_libraries(hello-jni android log)
