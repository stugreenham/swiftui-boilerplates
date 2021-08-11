//
//  ItemListRow.swift
//  Multi Platform Navigation
//
//  Created by Stu Greenham on 10/08/2021.
//

import SwiftUI

struct ItemListRow: View {
    var body: some View {
        HStack {
            Text("List Item")
        }
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemListRow()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
