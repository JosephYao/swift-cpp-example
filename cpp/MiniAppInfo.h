#ifndef CPP_FOR_SWIFT_MINIAPPINFO_H
#define CPP_FOR_SWIFT_MINIAPPINFO_H

#include <string>
#include <map>
#include "RouterInfo.h"

using namespace std;

namespace MiniApp {
    class MiniAppInfo {
    public:
        string& GetAppPath();
        void SetAppPath(string& appPath);
        shared_ptr<RouterInfo> GetRouter();
        map<string, string>& GetSubPackages();

    private:
        string appPath = "appPath";
        shared_ptr<RouterInfo> router = make_shared<RouterInfo>();
        map<string, string> subPackages = {{"key", "value"}};
    };
}


#endif //CPP_FOR_SWIFT_MINIAPPINFO_H
