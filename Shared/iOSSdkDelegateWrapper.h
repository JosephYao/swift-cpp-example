//
// Created by Joseph Yao on 2021/2/25.
//

#import <Foundation/Foundation.h>


@interface iOSSdkDelegateWrapper : NSObject
@property void * iOSSdkDelegate;
- (iOSSdkDelegateWrapper *)init;
- (void) domRenderAction: (NSString *) instanceId andArgs:(NSString *) args;
- (void) callAddElement: (NSString *) instanceId andRef:(NSString *) ref andDom:(NSString *) dom andIndex:(NSString *) index andCallback:(NSString *) callback;
- (void) registerCallAddElement: (void (^)(NSString *, NSString *, NSString *, NSString *, NSString *))callAddElement;
- (void)dealloc;
@end