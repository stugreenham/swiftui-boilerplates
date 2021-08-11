//
//  ListView.swift
//  Multi Platform Navigation
//
//  Created by Stu Greenham on 10/08/2021.
//

import SwiftUI

struct ListView: View {
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    
    var body: some View {
        if horizontalSizeClass == .compact {
            content
        } else {
            content
        }
    }
    
    var content: some View {
        HStack {
            List(0 ..< 50) { item in
                ItemListRow()
            }
            .navigationTitle("List")
        }
    }
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
