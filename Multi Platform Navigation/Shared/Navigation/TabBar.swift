//
//  TabBar.swift
//  Multi Platform Navigation
//
//  Created by Stu Greenham on 10/08/2021.
//

import SwiftUI

struct TabBar: View {
    
    //@State var selection: Set<NavigationItem> = [.list]
    
    var body: some View {
        TabView {
            NavigationView {
                ListView()
                    .navigationTitle("List")
            }
            .tabItem { Image(systemName: "book.closed")
                Text("List") }
            
            NavigationView {
                PageView(PageNum: 1)
            }
            .tabItem {
                Image(systemName: "list.bullet.rectangle")
                Text("Page")
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
