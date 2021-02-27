#include "iOSSdkDelegate.h"
#include "iOSSdkDelegateRegister.h"
#include "Block.h"

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

void iOSSdkDelegate::CallAddElement(string instanceId, string ref, string dom, string index, string callback) {
    _callAddElement(instanceId, ref, dom, index, callback);
}

void iOSSdkDelegate::RegisterCallAddElement(void (^callAddElement)(string, string, string, string, string)) {
    _callAddElement = Block_copy(callAddElement);
}
