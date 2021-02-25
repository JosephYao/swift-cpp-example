#include "iOSSdkDelegate.h"
#include "iOSSdkDelegateRegister.h"

void iOSSdkDelegate::DomRenderAction(string instanceId, string args) {

}

extern "C" {
typedef void (^domRenderActionImpl)();
domRenderActionImpl _domRenderAction;
void RegisterDomRenderAction(void (^domRenderAction)()) {
    _domRenderAction = domRenderAction;
    domRenderAction();
}
}