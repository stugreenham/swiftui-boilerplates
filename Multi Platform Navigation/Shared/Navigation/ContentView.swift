//
//  ContentView.swift
//  Shared
//
//  Created by Stu Greenham on 10/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    // This allows you to modify changes between iPhone and iPads
    #if os(iOS)
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    #endif
    
    var body: some View {
        #if os(iOS)
        if horizontalSizeClass == .compact {
            TabBar() // coursesview()
        } else {
            Sidebar()
//                .frame(minWidth: 1000, maxWidth: .infinity, minHeight: 600, maxHeight: .infinity)
        }
        #else
        Sidebar()
            .frame(minWidth: 1000, maxWidth: .infinity, minHeight: 600, maxHeight: .infinity)
        #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
