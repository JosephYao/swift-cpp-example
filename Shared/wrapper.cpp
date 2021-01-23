//
//  wrapper.cpp
//  swift-otp
//
//  Created by Joseph Yao on 2021/1/22.
//

#include "Parse.h"

extern "C" {
const void * MiniAppInfo_ParseFile(const char * path) {
    return (void *) MiniApp::Parse::ParseFile(path).get();
};
const char * MiniAppInfo_GetAppPath(void * miniAppInfo) {
    return ((MiniApp::MiniAppInfo *) miniAppInfo)->GetAppPath().c_str();
};
}
