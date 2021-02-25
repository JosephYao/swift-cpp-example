#ifndef CPP_FOR_SWIFT_IOSSDKDELEGATEREGISTER_H
#define CPP_FOR_SWIFT_IOSSDKDELEGATEREGISTER_H

#ifdef __cplusplus
extern "C" {
#endif
void RegisterDomRenderAction(void (^domRenderAction)(const char*, const char*));

#ifdef __cplusplus
};
#endif

#endif //CPP_FOR_SWIFT_IOSSDKDELEGATEREGISTER_H
