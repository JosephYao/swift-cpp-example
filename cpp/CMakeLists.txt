set(CMAKE_CXX_STANDARD 11)
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fobjc-abi-version=2 -fobjc-arc -std=gnu++11 -stdlib=libc++ -isysroot ${CMAKE_OSX_SYSROOT}")
#set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fobjc-abi-version=2 -fobjc-arc -isysroot ${CMAKE_OSX_SYSROOT}")

set(Main_SRCS AuthenticationService.cpp AuthenticationService.h ProfileDao.cpp ProfileDao.h RsaTokenDao.cpp RsaTokenDao.h Context.cpp Context.h Logger.h Logger.cpp)

add_library(core STATIC ${Main_SRCS})

#set_target_properties(core PROPERTIES
#        FRAMEWORK TRUE
##        MACOSX_FRAMEWORK_IDENTIFIER com.cmake.dynamicFramework
##        MACOSX_FRAMEWORK_INFO_PLIST Info.plist
#        # "current version" in semantic format in Mach-O binary file
##        VERSION 16.4.0
#        # "compatibility version" in semantic format in Mach-O binary file
##        SOVERSION 1.0.0
#        PUBLIC_HEADER AuthWrapper.h
##        XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "iPhone Developer"
#        )