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
const char * MiniAppInfo_GetAppPath(const void * miniAppInfo) {
    return ((MiniApp::MiniAppInfo *) miniAppInfo)->GetAppPath().c_str();
};
const void * MiniAppInfo_SetAppPath(const void * miniAppInfo, const char * path) {
    string pathStr = path;
    ((MiniApp::MiniAppInfo *) miniAppInfo)->SetAppPath(pathStr);
    return miniAppInfo;
};
}

