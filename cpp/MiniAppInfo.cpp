#include "MiniAppInfo.h"

namespace MiniApp {

    std::string &MiniAppInfo::GetAppPath() {
        return this->appPath;
    }

    void MiniAppInfo::SetAppPath(string &appPath) {
        this->appPath = appPath;
    }

    shared_ptr<RouterInfo> MiniAppInfo::GetRouter() {
        return this->router;
    }
}
