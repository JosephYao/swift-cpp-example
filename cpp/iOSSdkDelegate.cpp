#include "iOSSdkDelegate.h"
#include "iOSSdkDelegateRegister.h"

extern "C" {
typedef void (^domRenderActionImpl)(const char*, const char*);
domRenderActionImpl _domRenderAction;
void RegisterDomRenderAction(void (^domRenderAction)(const char*, const char*)) {
    _domRenderAction = domRenderAction;
}
}

void iOSSdkDelegate::DomRenderAction(string instanceId, string args) {
    _domRenderAction(instanceId.c_str(), args.c_str());
}