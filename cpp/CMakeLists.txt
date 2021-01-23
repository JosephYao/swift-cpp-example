project(cpp-for-swift)
set(CMAKE_CXX_STANDARD 11)

include_directories(.)

set(Main_SRCS Parse.cpp MiniAppInfo.cpp)

add_library(parse STATIC ${Main_SRCS})
