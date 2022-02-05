//
//  WelcomeView.swift
//  Welcome Screen
//
//  Created by Stu Greenham on 05/02/2022.
//

import SwiftUI

struct WelcomeView: View {
    
    //: MARK: - PROPERTIES
    @AppStorage("displayWelcomeScreen") var displayWelcomeScreen: Bool = true
    
    //: MARK: - BODY
    var body: some View {
        
        VStack(alignment: .center) {
            
            Spacer()
            
            // Title
            Text("Welcome to my app")
                .font(.title)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .padding(.top, 32)
            
            // Features
            VStack(alignment: .leading) {
                
                WelcomeRow(
                    title: "Slick User Interface",
                    subCopy: "Navigate our app with ease, using it's simple and intuitive UI.",
                    imageName: "wand.and.stars")
                
                WelcomeRow(
                    title: "Dark Mode Support",
                    subCopy: "Pick the theme that works for you, or let us automate it.",
                    imageName: "switch.2")
                
                WelcomeRow(
                    title: "Multi Device",
                    subCopy: "Sync content across all your devices using iCloud.",
                    imageName: "icloud")
                
            }
            .padding(.horizontal)
            .padding(.top, 24)

            Spacer()

            // Button
            Button(action: {
                displayWelcomeScreen = false
            }) {
                Text("Get Started")
            }
            .foregroundColor(.white)
            .font(.headline)
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
            .background(RoundedRectangle(cornerRadius: 15, style: .continuous)
            .fill(Color.accentColor))
            
        } // VStack
        .padding(.horizontal)
        
    }
}


struct WelcomeRow: View {
    var title: String = "Title"
    var subCopy: String = "Sub Title"
    var imageName: String = "car"
    
    //: MARK: - BODY
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: imageName)
                .font(.largeTitle)
                .foregroundColor(.gray)
                .padding(12)
                .accessibility(hidden: true)

            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .accessibility(addTraits: .isHeader)

                Text(subCopy)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
        .padding(.top, 4)
    }
}


//: MARK: - PROPERTIES
struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
