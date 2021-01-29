//
// Created by Joseph Yao on 2021/1/27.
//

#import <Foundation/Foundation.h>
#import "OcRouterInfo.h"

@interface OcMiniAppInfo : NSObject
@property void * miniAppInfoP;
+ (OcMiniAppInfo *)parse:(NSString *)path;
+ (OcMiniAppInfo *)getInstance;
- (NSString *)getAppPath;
- (void)setAppPath:(NSString *)appPath;
- (OcRouterInfo *)getRouterInfo;
- (NSMutableDictionary<NSString *, NSString *> *)getSubPackages;
@end