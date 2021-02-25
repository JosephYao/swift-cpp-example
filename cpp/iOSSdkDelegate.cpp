#include "iOSSdkDelegate.h"
#include "iOSSdkDelegateRegister.h"

extern "C" {
typedef void (^domRenderActionImpl)();
domRenderActionImpl _domRenderAction;
void RegisterDomRenderAction(void (^domRenderAction)()) {
    _domRenderAction = domRenderAction;
}
}

void iOSSdkDelegate::DomRenderAction(string instanceId, string args) {
    _domRenderAction();
}