//
//  ListView.swift
//  Multi Platform Navigation
//
//  Created by Stu Greenham on 10/08/2021.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            List(0 ..< 50) { item in
                NavigationLink(destination: ItemView()) {
                    ItemListRow()
                }
            }
            //.listStyle(SidebarListStyle())
            .navigationTitle("List")
        }
        //.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
