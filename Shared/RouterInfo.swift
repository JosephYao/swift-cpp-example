//
// Created by Joseph Yao on 2021/1/27.
//

import Foundation

class RouterInfo {

    private var routerInfoP: UnsafeRawPointer?;

    init(routerInfoP: UnsafeRawPointer?) {
        self.routerInfoP = routerInfoP
    }

    func getEntry() -> String {
        String(cString: RouterInfo_GetEntry(routerInfoP))
    }
}
