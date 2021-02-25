//
// Created by Joseph Yao on 2021/2/25.
//

#import <Foundation/Foundation.h>


@interface iOSSdkDelegateWrapper : NSObject
@property void * iOSSdkDelegate;
- (iOSSdkDelegateWrapper *)init;
- (void) domRenderAction: (NSString *) instanceId andArgs:(NSString *) args;
- (void)dealloc;
@end