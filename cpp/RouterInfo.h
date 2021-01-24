#ifndef CPP_FOR_SWIFT_ROUTERINFO_H
#define CPP_FOR_SWIFT_ROUTERINFO_H

#include <string>

using namespace std;

namespace MiniApp {
    class RouterInfo {
    public:
        string& GetEntry();
        void SetEntry(string& entry);

    private:
        string entry = "routerEntry";
    };
}


#endif //CPP_FOR_SWIFT_ROUTERINFO_H
