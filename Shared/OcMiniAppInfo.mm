//
// Created by Joseph Yao on 2021/1/27.
//

#import "OcMiniAppInfo.h"
#include "Parse.h"

using namespace std;
using namespace MiniApp;

@implementation OcMiniAppInfo {

}
+ (OcMiniAppInfo *)parse:(NSString *)path {
    OcMiniAppInfo * ocMiniAppInfo = [OcMiniAppInfo new];
    void * p = MiniApp::Parse::ParseFile(path.UTF8String).get();
    ocMiniAppInfo.miniAppInfoP = p;
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