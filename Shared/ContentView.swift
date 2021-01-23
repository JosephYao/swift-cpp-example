//
//  ContentView.swift
//  Shared
//
//  Created by Joseph Yao on 2021/1/19.
//
//

import SwiftUI
	
struct ContentView: View {

    var body: some View {
        Text("Hello iOS world!")
        let miniAppInfo = ParseFile("path")
        Text(String(cString: GetAppPath(miniAppInfo)))
    }

}
