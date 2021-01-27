//
//  ContentView.swift
//  Shared
//
//  Created by Joseph Yao on 2021/1/19.
//
//

import SwiftUI
	
struct ContentView: View {
    @State var appPathText = "Please get or set app path";
    @State var routerEntryText = "Please get or set router entry";
    @State var subPackagesText = "";

    init() {
        MiniAppInfo.parse(path: "path")
    }

    var body: some View {
        Text(appPathText)
        Button(action: {
            self.appPathText = OcMiniAppInfo.parse("path").getAppPath()
        }) {
            Text("GetAppPath")
        }
        Button(action: {
            let miniAppInfo = MiniAppInfo_ParseFile("path")
            MiniAppInfo_SetAppPath(miniAppInfo, "newAppPath")
            self.appPathText = String(cString: MiniAppInfo_GetAppPath(miniAppInfo))
        }) {
            Text("SetAppPath")
        }
        Text(routerEntryText)
        Button(action: {
            self.routerEntryText = MiniAppInfo.getInstance().getRouterInfo().getEntry()
        }) {
            Text("GetRouterEntry")
        }
        Button(action: {
            let routerInfo = MiniAppInfo_GetRouterInfo(MiniAppInfo_ParseFile("path"))
            RouterInfo_SetEntry(routerInfo, "newRouterEntry")
            self.routerEntryText = String(cString: RouterInfo_GetEntry(routerInfo))
        }) {
            Text("SetRouterEntry")
        }
        Text(subPackagesText)
        Button(action: {
            let miniAppInfo = MiniAppInfo_ParseFile("path")
            let subPackagesMap = MiniAppInfo_GetSubPackages(miniAppInfo).pointee
            let buffer = UnsafeBufferPointer(start: subPackagesMap.mapEntries, count: Int(subPackagesMap.size))
            self.subPackagesText = Array(buffer).map{
                String(cString: $0.key) + ":" + String(cString: $0.value)
            }.joined(separator: ";")
        }) {
            Text("GetSubPackages")
        }
    }

}
