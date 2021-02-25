//
// Created by Joseph Yao on 2021/2/25.
//

#import "iOSSdkDelegateWrapper.h"
#import "iOSSdkDelegate.h"


@implementation iOSSdkDelegateWrapper
- (iOSSdkDelegateWrapper *)init {
    self.iOSSdkDelegate = new iOSSdkDelegate();
    return self;
}

- (void)domRenderAction:(NSString *)instanceId andArgs:(NSString *)args {
    string instanceIdStr([instanceId UTF8String]);
    string argsStr([args UTF8String]);
    ((iOSSdkDelegate *) self.iOSSdkDelegate)->DomRenderAction(instanceIdStr, argsStr);
}

- (void)dealloc {
    delete self.iOSSdkDelegate;
}

@end