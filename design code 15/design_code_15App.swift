//
//  design_code_15App.swift
//  design code 15
//
//  Created by Aaron on 2022/2/21.
//

import SwiftUI

@main
struct design_code_15App: App {
    @StateObject var model = Model()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
