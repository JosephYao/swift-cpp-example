//
// Created by Joseph Yao on 2021/1/27.
//

#import "OcMiniAppInfo.h"
#include "Parse.h"

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


@end