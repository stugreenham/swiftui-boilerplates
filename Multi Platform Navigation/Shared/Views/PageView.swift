//
//  PageView.swift
//  Multi Platform Navigation
//
//  Created by Stu Greenham on 10/08/2021.
//

import SwiftUI

struct PageView: View {
    
    @State var PageNum: Int
    
    var body: some View {
        Text("Page \(PageNum)")
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(PageNum: 1)
    }
}
