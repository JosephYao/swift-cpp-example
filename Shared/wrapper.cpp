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
void MiniAppInfo_SetAppPath(const void * miniAppInfo, const char * path) {
    string pathStr = path;
    ((MiniApp::MiniAppInfo *) miniAppInfo)->SetAppPath(pathStr);
};
const void * MiniAppInfo_GetRouterInfo(const void * miniAppInfo) {
    return (void *) ((MiniApp::MiniAppInfo *) miniAppInfo)->GetRouter().get();
};
const char * RouterInfo_GetEntry(const void * routerInfo) {
    return ((MiniApp::RouterInfo *) routerInfo)->GetEntry().c_str();
};
}

