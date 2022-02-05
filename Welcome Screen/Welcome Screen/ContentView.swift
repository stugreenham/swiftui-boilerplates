//
//  ContentView.swift
//  Welcome Screen
//
//  Created by Stu Greenham on 05/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    //: MARK: - PROPERTIES
    @AppStorage("displayWelcomeScreen") var displayWelcomeScreen: Bool = true
    
    //: MARK: - BODY
    var body: some View {
        
        if displayWelcomeScreen {
            WelcomeView()
        } else {
            Text("Hello, world!")
                .padding()
        }
        
    }
}


//: MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
