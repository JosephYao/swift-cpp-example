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
    }

}
