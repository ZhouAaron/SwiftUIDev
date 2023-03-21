//
//  SwiftUIDevApp.swift
//  SwiftUIDev
//
//  Created by Aaron on 2022/2/21.
//

import SwiftUI
 
@main
struct SwiftUIDevApp: App {
    @StateObject var model = Model()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}

