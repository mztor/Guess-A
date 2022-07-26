//
//  letterView.swift
//  Guess-A
//
//  Created by Sarah Tor on 29/6/2022.
//

import SwiftUI
 
struct letterLevels: View {
    var body: some View {
        VStack {
            HStack {
                NavigationLink(destination: numberGame(level: "Easy")) { Text("Easy") }
                .padding()
                NavigationLink(destination: numberGame(level: "Hard")) { Text("Hard") }
                .padding()
            }
        }
        .toolbar {
            Button("Help"){
                //show the help for Guess a number difficulty
            }
        }
        .padding()
        .navigationTitle("Guess A Number")
    }
}
 
struct letterLevels_Previews: PreviewProvider {
    static var previews: some View {
        letterLevels()
    }
}

