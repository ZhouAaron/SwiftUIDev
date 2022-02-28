//
//  SearchView.swift
//  design code 15
//
//  Created by Aaron on 2022/2/28.
//

import SwiftUI

struct SearchView: View {
    @State var text = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            List {
                ForEach(courses.filter {$0.title.contains(text) || text == ""}) { item in
                    Text(item.title)
                }
            }
            .searchable(text: $text, placement: .navigationBarDrawer(displayMode: .always), prompt: Text("SwifUI, React, UI Design"))
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button {presentationMode.wrappedValue.dismiss() } label: {
                Text("Done").bold()
            })
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
