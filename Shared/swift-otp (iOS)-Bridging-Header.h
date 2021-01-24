//
//  Use this file to import your target's public headers that you would like to expose to Swift.
//

const void * MiniAppInfo_ParseFile(const char * path);
const char * MiniAppInfo_GetAppPath(const void * miniAppInfo);
void MiniAppInfo_SetAppPath(const void * miniAppInfo, const char * path);
