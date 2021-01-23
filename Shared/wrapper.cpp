//
//  wrapper.cpp
//  swift-otp
//
//  Created by Joseph Yao on 2021/1/22.
//

#include <stdio.h>
#include "AuthenticationService.h"

//extern "C" bool isValid() {
extern "C" bool isValid(const char* userName, const char* password) {
    return ConcreteAuthenticationService().isValid(string(userName), string(password));
}

