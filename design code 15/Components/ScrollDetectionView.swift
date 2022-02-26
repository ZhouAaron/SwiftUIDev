//
//  ScrollDetectionView.swift
//  design code 15
//
//  Created by Aaron on 2022/2/25.
//

import SwiftUI

struct ScrollDetectionView: View {
    var body: some View {
        GeometryReader { proxy in
            Color.clear.preference(key: ScrollPreferenceKey.self, value: proxy.frame(in: .named("scroll")).minY)
            
            Text("\(proxy.frame(in: .global).minY)")
        }
        .frame(height: 0)
    }
}
