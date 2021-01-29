//
// Created by Joseph Yao on 2021/1/29.
//

#import <MiniAppInfo.h>
#import "OcRouterInfo.h"


@implementation OcRouterInfo {

}
- (NSString *)getEntry {
    return @(((MiniApp::MiniAppInfo *)self.miniAppInfoP)->GetRouter()->GetEntry().c_str());
}

@end