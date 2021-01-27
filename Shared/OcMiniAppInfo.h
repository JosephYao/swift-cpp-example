//
// Created by Joseph Yao on 2021/1/27.
//

#import <Foundation/Foundation.h>

@interface OcMiniAppInfo : NSObject
@property void * miniAppInfoP;
+ (OcMiniAppInfo *)parse:(NSString *)path;
- (NSString *)getAppPath;
@end