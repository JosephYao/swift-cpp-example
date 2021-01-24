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
void RouterInfo_SetEntry(const void * routerInfo, const char * entry) {
    string entryStr = entry;
    ((MiniApp::RouterInfo *) routerInfo)->SetEntry(entryStr);
};
struct mapEntry {
    const char * key;
    const char * value;
};
const mapEntry * MiniAppInfo_GetSubPackages(const void * miniAppInfo) {
    map<string, string>& subPackages = ((MiniApp::MiniAppInfo *) miniAppInfo)->GetSubPackages();
    mapEntry * subPackagesArray = new mapEntry[subPackages.size()];
    auto index = 0;
    for(auto iter = subPackages.begin(); iter != subPackages.end(); ++iter)
    {
        subPackagesArray[index++] = mapEntry {
            .key = iter->first.c_str(),
            .value = iter->second.c_str()
        };
    }
    return subPackagesArray;
};
}

