This repo is an example about how swift can call cpp code. It also includes the build of a cpp lib for iOS with cmake.

1. Build cpp lib for iOS
```shell
cd cpp
mkdir build
cd build
cmake .. -DCMAKE_TOOLCHAIN_FILE=./iOS.cmake -DIOS_PLATFORM=SIMULATOR
make
```

2. After build cpp lib, you can run the iOS app and play with it.