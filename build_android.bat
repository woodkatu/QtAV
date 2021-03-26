@echo off

set NDK_HOME="D:/AndroidSDK/ndk/21.3.6528147"

cmake -S . -B cmake_android -GNinja ^
-DANDROID_NDK=%NDK_HOME% ^
-DANDROID_ABI="armeabi-v7a" ^
-DANDROID_PLATFORM="android-16" ^
-DANDROID_STL="c++_shared" ^
-DCMAKE_TOOLCHAIN_FILE="%NDK_HOME%/build/cmake/android.toolchain.cmake" ^
-DCMAKE_BUILD_TYPE="Release" ^
-DCMAKE_FIND_ROOT_PATH_MODE_INCLUDE="BOTH" ^
-DCMAKE_FIND_ROOT_PATH_MODE_LIBRARY="BOTH" ^
-DCMAKE_FIND_ROOT_PATH_MODE_PACKAGE="BOTH" ^
-DQTDIR="D:/Qt5/5.15.2/android" ^
-DFFMPEGDIR="G:/Avbuild/sdk-android-armv7-clang"

@REM cmake --build ./cmake_android %1
cmake --build ./cmake_android --target QtAV
