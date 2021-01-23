#ifndef CPP_FOR_SWIFT_MINIAPPINFO_H
#define CPP_FOR_SWIFT_MINIAPPINFO_H

#include <string>

using namespace std;

namespace MiniApp {
    class MiniAppInfo {
    public:
        string& GetAppPath();

    private:
        string appPath = "appPath";
    };
}


#endif //CPP_FOR_SWIFT_MINIAPPINFO_H
