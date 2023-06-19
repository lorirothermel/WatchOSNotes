//
//  DetailView.swift
//  WatchOSNotes Watch App
//
//  Created by Lori Rothermel on 6/18/23.
//

import SwiftUI

struct DetailView: View {
    @State private var isCreditsPresented: Bool = false
    @State private var isSettingsPresented: Bool = false
    
    
    let note: Note
    let count: Int
    let index: Int
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 3) {
            
            // HEADER
            HeaderView(title: "")
            
            // CONTENT
            Spacer()
            ScrollView(.vertical) {
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }  // ScrollView
            
            Spacer()
            
            // FOOTER
            HStack(alignment: .center) {
                Image(systemName: "gear")
                    .imageScale(.large)
                    .onTapGesture {
                        isSettingsPresented.toggle()
                    }  // .onTapGesture
                    .sheet(isPresented: $isSettingsPresented) {
                        SettingsView()
                    }  // .sheet
                Spacer()
                Text("\(count) / \(index + 1)")
                Spacer()
                Image(systemName: "info.circle")
                    .imageScale(.large)
                    .onTapGesture {
                        isCreditsPresented.toggle()
                    }  // .onTapGesture
                    .sheet(isPresented: $isCreditsPresented) {
                        CreditsView()
                    }  // .sheet
            }  // HStack
            .foregroundColor(.secondary)
            
        }  // VStack
        .padding(3)
        
    }  // some View
}  // DetailView


struct DetailView_Previews: PreviewProvider {
    static var sampleData: Note = Note(id: UUID(), text: "Hello World!")
    
    static var previews: some View {
        DetailView(note: sampleData, count: 5, index: 1)
    }
}
