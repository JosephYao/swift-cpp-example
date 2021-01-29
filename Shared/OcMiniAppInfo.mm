//
// Created by Joseph Yao on 2021/1/27.
//

#import "OcMiniAppInfo.h"
#include "Parse.h"
#import "OcRouterInfo.h"

using namespace std;
using namespace MiniApp;

static shared_ptr<MiniApp::MiniAppInfo> anotherP;

@implementation OcMiniAppInfo {

}
+ (OcMiniAppInfo *)parse:(NSString *)path {
    OcMiniAppInfo * ocMiniAppInfo = [OcMiniAppInfo new];
    anotherP = MiniApp::Parse::ParseFile(path.UTF8String);
    ocMiniAppInfo.miniAppInfoP = anotherP.get();
    return ocMiniAppInfo;
}

+ (OcMiniAppInfo *)getInstance {
    OcMiniAppInfo * ocMiniAppInfo = [OcMiniAppInfo new];
    ocMiniAppInfo.miniAppInfoP = anotherP.get();
    return ocMiniAppInfo;
}

- (NSString *)getAppPath {
    return @(((MiniApp::MiniAppInfo *)self.miniAppInfoP)->GetAppPath().c_str());
}

- (void)setAppPath:(NSString *)appPath {
    string appPathStr = appPath.UTF8String;
    ((MiniAppInfo * )self.miniAppInfoP)->SetAppPath(appPathStr);
}

- (OcRouterInfo *)getRouterInfo {
    OcRouterInfo * ocRouterInfo = [OcRouterInfo new];
    ocRouterInfo.miniAppInfoP = anotherP.get();
    return ocRouterInfo;
}

- (NSMutableDictionary<NSString *, NSString *> *)getSubPackages {
    map<string, string>& subPackages = ((MiniApp::MiniAppInfo *) self.miniAppInfoP)->GetSubPackages();
    NSMutableDictionary<NSString *, NSString *> *subPackageDic = [NSMutableDictionary new];
    for(auto iter = subPackages.begin(); iter != subPackages.end(); ++iter)
    {
        [subPackageDic setValue:@(iter->second.c_str()) forKey:@(iter->first.c_str())];
    }
    return subPackageDic;
}

@end