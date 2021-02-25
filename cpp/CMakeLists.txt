project(cpp-for-swift)
set(CMAKE_CXX_STANDARD 17)

include_directories(.)

set(Main_SRCS Parse.cpp MiniAppInfo.cpp RouterInfo.cpp iOSSdkDelegate.cpp)

add_library(parse STATIC ${Main_SRCS})
