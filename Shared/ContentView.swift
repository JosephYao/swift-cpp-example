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

    var body: some View {
        Text(appPathText)
        Button(action: {
            let miniAppInfo = MiniAppInfo_ParseFile("path")
            self.appPathText = String(cString: MiniAppInfo_GetAppPath(miniAppInfo))
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
            let routerInfo = MiniAppInfo_GetRouterInfo(MiniAppInfo_ParseFile("path"))
            self.routerEntryText = String(cString: RouterInfo_GetEntry(routerInfo))
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
    }

}
