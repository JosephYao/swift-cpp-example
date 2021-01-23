//
//  wrapper.cpp
//  swift-otp
//
//  Created by Joseph Yao on 2021/1/22.
//

#include "Parse.h"

extern "C" const char * GetAppPath() {
    return MiniApp::Parse::ParseFile("")->GetAppPath().c_str();
}

