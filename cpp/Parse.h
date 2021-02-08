#ifndef CPP_FOR_SWIFT_PARSE_H
#define CPP_FOR_SWIFT_PARSE_H

#include <memory>
#include <string>
#include "MiniAppInfo.h"
#include <filesystem>

using namespace std;

namespace MiniApp {
    class Parse {
    public:
        static shared_ptr<MiniAppInfo> ParseFile(const filesystem::path& path);
    };
}



#endif //CPP_FOR_SWIFT_PARSE_H
