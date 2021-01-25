//
//  Use this file to import your target's public headers that you would like to expose to Swift.
//

const void * MiniAppInfo_ParseFile(const char * path);
const char * MiniAppInfo_GetAppPath(const void * miniAppInfo);
void MiniAppInfo_SetAppPath(const void * miniAppInfo, const char * path);
const void * MiniAppInfo_GetRouterInfo(const void * miniAppInfo);
const char * RouterInfo_GetEntry(const void * routerInfo);
void RouterInfo_SetEntry(const void * routerInfo, const char * entry);
struct mapEntry {
    const char * key;
    const char * value;
};
struct cppMap {
    unsigned long size;
    struct mapEntry * mapEntries;
};
const struct cppMap * MiniAppInfo_GetSubPackages(const void * miniAppInfo);
