//
//  Boundary2App.swift
//  Boundary2
//
//  Created by Admin on 1.09.22.
//

import SwiftUI

class MyAppDelegate: NSObject, NSApplicationDelegate, ObservableObject {
    func applicationDidFinishLaunching(_ : Notification) {
        while NSApplication.shared.mainMenu?.items.count ?? 0 > 3 {
            NSApplication.shared.mainMenu?.removeItem(at: 2)
        }
    }
}

@main
struct Boundary2App: App {
    @NSApplicationDelegateAdaptor private var appDelegate: MyAppDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
