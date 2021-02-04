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
    @ObservedObject var model = WebViewModel(link: "https://www.wikipedia.org/")

    init() {
        OcMiniAppInfo.parse("path")
    }

    var body: some View {
        Text(appPathText)
        Button(action: {
            self.appPathText = OcMiniAppInfo.getInstance().getAppPath()
        }) {
            Text("GetAppPath")
        }
        Button(action: {
            let miniAppInfo = OcMiniAppInfo.getInstance()!
            miniAppInfo.setAppPath("newAppPath" + Int.random(in: 1..<100).description)
            self.appPathText = miniAppInfo.getAppPath()
        }) {
            Text("SetAppPath")
        }
        Text(routerEntryText)
        Button(action: {
            self.routerEntryText = OcMiniAppInfo.getInstance().getRouterInfo().getEntry()
        }) {
            Text("GetRouterEntry")
        }
        Button(action: {
            let routerInfo = OcMiniAppInfo.getInstance().getRouterInfo()!
            routerInfo.setEntry("newRouterEntry" + Int.random(in: 1..<50).description)
            self.routerEntryText = routerInfo.getEntry()
        }) {
            Text("SetRouterEntry")
        }
        Text(subPackagesText)
        Button(action: {
            let subPackagesMap = OcMiniAppInfo.getInstance().getSubPackages() as! Dictionary<String, String>
            self.subPackagesText = subPackagesMap.map { (key, value) in
                key + ":" + value
            }.joined(separator: ";")
        }) {
            Text("GetSubPackages")
        }

        NavigationView {
            SwiftUIWebView(viewModel: model)
        }
    }

}
