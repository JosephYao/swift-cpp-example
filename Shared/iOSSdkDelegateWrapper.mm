//
// Created by Joseph Yao on 2021/2/25.
//

#import "iOSSdkDelegateWrapper.h"
#import "iOSSdkDelegate.h"

using namespace std;

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

- (void)callAddElement:(NSString *)instanceId andRef:(NSString *)ref andDom:(NSString *)dom andIndex:(NSString *)index andCallback:(NSString *)callback {
    string instanceIdStr([instanceId UTF8String]);
    string refStr([ref UTF8String]);
    string domStr([dom UTF8String]);
    string indexStr([index UTF8String]);
    string callbackStr([callback UTF8String]);
    ((iOSSdkDelegate *) self.iOSSdkDelegate)->CallAddElement(instanceIdStr, refStr, domStr, indexStr, callbackStr);
}


- (void)registerCallAddElement:(void (^)(NSString *, NSString *, NSString *, NSString *, NSString *))callAddElement {
    ((iOSSdkDelegate *) self.iOSSdkDelegate)->RegisterCallAddElement(^(string instanceId, string ref, string dom, string index, string callback) {
        callAddElement(@(instanceId.c_str()), @(ref.c_str()), @(dom.c_str()), @(index.c_str()), @(callback.c_str()));
    });
}

- (void)dealloc {
    delete self.iOSSdkDelegate;
}

@end