#ifndef CPP_FOR_SWIFT_IOSSDKDELEGATE_H
#define CPP_FOR_SWIFT_IOSSDKDELEGATE_H
#include <string>

using namespace std;

typedef void (^callAddElementImpl)(string, string, string, string, string);

class iOSSdkDelegate {

public:
    void DomRenderAction(string instanceId, string args);
    void CallAddElement(string instanceId, string ref, string dom, string index, string callback);
    void RegisterCallAddElement(void (^callAddElement)(string, string, string, string, string));

private:
    callAddElementImpl _callAddElement;
};


#endif //CPP_FOR_SWIFT_IOSSDKDELEGATE_H
