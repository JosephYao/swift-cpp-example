#include "RouterInfo.h"

string &MiniApp::RouterInfo::GetEntry() {
    return this->entry;
}

void MiniApp::RouterInfo::SetEntry(string &entry) {
    this->entry = entry;
}
