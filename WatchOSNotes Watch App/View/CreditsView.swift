//
//  CreditsView.swift
//  WatchOSNotes Watch App
//
//  Created by Lori Rothermel on 6/18/23.
//

import SwiftUI

struct CreditsView: View {
    @State private var randomNumber: Int = Int.random(in: 1..<4)
    
    private var randomImage: String {
        return "developer-no\(randomNumber)"
    }
    
    
    var body: some View {
        VStack(spacing: 3) {
            
            // PROFILE IMAGE
            Image("Collie-white2")
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            // HEADER
            HeaderView(title: "Credits")
            
            // CONTENT
            Text("Lori B. Rothermel")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            Text("Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
        }  // VStack
    }  // some View
}  // CreditsView


struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
