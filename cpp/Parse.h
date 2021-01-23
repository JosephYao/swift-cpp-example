#ifndef CPP_FOR_SWIFT_PARSE_H
#define CPP_FOR_SWIFT_PARSE_H

#include <memory>
#include <string>
#include "MiniAppInfo.h"

namespace MiniApp {
    class Parse {
    public:
        static std::shared_ptr<MiniAppInfo> ParseFile(const std::string& path);
    };
}



#endif //CPP_FOR_SWIFT_PARSE_H
