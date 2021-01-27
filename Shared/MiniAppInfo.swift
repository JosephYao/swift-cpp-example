//
// Created by Joseph Yao on 2021/1/26.
//

import Foundation

class MiniAppInfo {

    private var miniAppInfoP: UnsafeRawPointer?;

    private static var rpkPath: String?

    init(miniAppInfoP: UnsafeRawPointer?) {
        self.miniAppInfoP = miniAppInfoP
    }

    static func parse(path: String) -> MiniAppInfo {
        rpkPath = path
        return getInstance()
    }

    static func getInstance() -> MiniAppInfo {
        MiniAppInfo(miniAppInfoP: MiniAppInfo_ParseFile(rpkPath))
    }

    func getAppPath() -> String {
        String(cString: MiniAppInfo_GetAppPath(miniAppInfoP))
    }

    func getRouterInfo() -> RouterInfo {
        RouterInfo(routerInfoP: MiniAppInfo_GetRouterInfo(miniAppInfoP))
    }
}
