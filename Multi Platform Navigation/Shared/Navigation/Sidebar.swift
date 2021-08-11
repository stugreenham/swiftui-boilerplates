//
//  Sidebar.swift
//  Multi Platform Navigation
//
//  Created by Stu Greenham on 10/08/2021.
//

import SwiftUI

enum NavigationItem {
    case list
    case page
}

#if !os(iOS)
func toggleSidebar() {
    NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
}
#endif


struct Sidebar: View {
    
    @State var selection: Set<NavigationItem> = [.list]
    
    var body: some View {
        
        NavigationView {
            List(selection: $selection) {
                NavigationLink(destination: ListView()) {
                    Label("List", systemImage: "book.closed")
                }
                .tag(NavigationItem.list)
                
                NavigationLink(destination: PageView(PageNum: 1)) {
                    Label("Page", systemImage: "list.bullet.rectangle")
                }
                .tag(NavigationItem.page)
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Menu")
            .frame(minWidth: 200)

            ListView()
        }
        .toolbar {
            #if !os(iOS)
            ToolbarItem(placement: .navigation) {
                Button(action: toggleSidebar, label: {
                    Image(systemName: "sidebar.left")
                })
            }
            #endif
        }
        
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}
