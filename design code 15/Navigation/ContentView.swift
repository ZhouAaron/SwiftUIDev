//
//  ContentView.swift
//  design code 15
//
//  Created by Aaron on 2022/2/21.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("selectedTab") var selectedTab: Tab = .home
    @AppStorage("showModal") var showModal = false
    @EnvironmentObject var model: Model
    var body: some View {
        ZStack {
            
            switch selectedTab {
            case .home:
                HomeView()
            case .explore:
                ExploreView()
            case .notifications:
                AccountView()
            case .library:
                AccountView()
            }
            
            TabBar()
                .offset(y: model.showDetail ? 200 : 0)
            if showModal {
                ModalView()
                    .zIndex(1)
            }
        }
        .safeAreaInset(edge: .bottom) {
            Color.clear.frame(height: 44)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 13 mini")
        }
        .environmentObject(Model())
    }
}
