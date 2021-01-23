#ifndef CPP_OTP_AUTHWRAPPER_H
#define CPP_OTP_AUTHWRAPPER_H

#include "AuthenticationService.h"

extern "C" bool isValid(string userName, string password) {
    return ConcreteAuthenticationService().isValid(userName, password);
}

#endif //CPP_OTP_AUTHWRAPPER_H
