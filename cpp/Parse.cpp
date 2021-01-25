#include "Parse.h"

namespace MiniApp {

    shared_ptr<MiniAppInfo> Parse::ParseFile(const __fs::filesystem::path& path) {
        return std::make_shared<MiniAppInfo>();
    }
}
