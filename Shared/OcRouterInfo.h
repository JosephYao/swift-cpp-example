//
// Created by Joseph Yao on 2021/1/29.
//

#import <Foundation/Foundation.h>


@interface OcRouterInfo : NSObject
@property void * miniAppInfoP;
- (NSString *)getEntry;
- (void)setEntry:(NSString *)entry;
@end