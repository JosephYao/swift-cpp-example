//
// Created by Joseph Yao on 2021/1/29.
//

#import <MiniAppInfo.h>
#import "OcRouterInfo.h"
#import "RouterInfo.h"


@implementation OcRouterInfo {

}
- (NSString *)getEntry {
    return @([self getRouterInfo]->GetEntry().c_str());
}

- (shared_ptr<MiniApp::RouterInfo>)getRouterInfo {
    return ((MiniApp::MiniAppInfo *) self.miniAppInfoP)->GetRouter();
}

- (void)setEntry:(NSString *)entry {
    string entryStr = entry.UTF8String;
    [self getRouterInfo]->SetEntry(entryStr);
}


@end