//
//  ContentView.swift
//  Boilerplate Tab View
//
//  Created by Stu Greenham on 24/05/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            
            TabOneView().tabItem {
                Image(systemName: "house.fill")
                Text("Tab Label 1")
            }
            
            TabTwoView().tabItem {
                Image(systemName: "gamecontroller.fill")
                Text("Tab Label 2")
            }
            
            TabThreeView().tabItem {
                Image(systemName: "bolt.fill")
                Text("Tab Label 3")
            }
            
            TabFourView().tabItem {
                Image(systemName: "graduationcap.fill")
                Text("Tab Label 4")
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
