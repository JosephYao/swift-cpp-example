//
//  swift_otpApp.swift
//  Shared
//
//  Created by Joseph Yao on 2021/1/19.
//
//

import SwiftUI

@main
struct swift_otpApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
