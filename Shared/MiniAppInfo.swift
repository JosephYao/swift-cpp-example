//
// Created by Joseph Yao on 2021/1/26.
//

import Foundation

class MiniAppInfo {

    private var miniAppInfoP: UnsafeRawPointer?;

    init(miniAppInfoP: UnsafeRawPointer?) {
        self.miniAppInfoP = miniAppInfoP
    }

    static func parse(path: String) -> MiniAppInfo {
        MiniAppInfo(miniAppInfoP: MiniAppInfo_ParseFile(path))
    }

    func getAppPath() -> String {
        String(cString: MiniAppInfo_GetAppPath(miniAppInfoP))
    }

    func getRouterInfo() -> RouterInfo {
        RouterInfo(routerInfoP: MiniAppInfo_GetRouterInfo(miniAppInfoP))
    }
}
