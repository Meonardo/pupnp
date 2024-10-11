export ANDROID_NDK_PATH=/home/meonardo/Android/NDK/android-ndk-r25c

rm -fr build
mkdir build && cd build
mkdir install

cmake .. -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK_PATH/build/cmake/android.toolchain.cmake -DANDROID_ABI=arm64-v8a -DANDROID_PLATFORM=android-29 -DANDROID_NDK=$ANDROID_NDK_PATH -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=install -DANDROID_STL=c++_shared -DDOWNLOAD_AND_BUILD_DEPS=ON

make -j8 && make install