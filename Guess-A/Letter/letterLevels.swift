//
//  letterView.swift
//  Guess-A
//
//  Created by Sarah Tor on 29/6/2022.
//

import SwiftUI
 
struct letterLevels: View {
    @State private var showingPopover = false
    var body: some View {
        VStack {
            VStack {
                NavigationLink(destination: letterGame(level: "Easy")) {
                    //takes the user to the Easy level
                    Text ("Easy")
                    .font(.title)
                    .padding()
                    .foregroundColor(.green)
                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(.green, lineWidth: 2))
                }
                NavigationLink(destination: letterGame(level: "Medium")) {
                    //takes the user to the Medium level
                    Text("Medium")
                    .font(.title)
                    .padding()
                    .foregroundColor(.blue)
                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(.blue, lineWidth: 2))
                }
                NavigationLink(destination: letterGame(level: "Hard")) {
                    //takes the user to the Hard level
                    Text("Hard")
                    .font(.title)
                    .padding()
                    .foregroundColor(.red)
                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(.red, lineWidth: 2))
                }
           }
            .navigationBarTitle("Guess-A-Letter")
        }
        .toolbar {
            Button(action: {
                showingPopover = true
            }) {
            Image(systemName: "questionmark.circle")
                .popover(isPresented: $showingPopover) {
                    Text("Ensure you enter a valid guess (no numbers, punctuation, emojis, or special characters like an exclamation mark). \n \n Valid guesses will change depending on level, with Easy choosing a letter between 'a' and 'z', Medium between 'a' and 'Z', and Hard being any letter (including accented and captial letters).")
                        .font(.headline)
                        .padding()
                }
            }
        }
    }
}
 
struct letterLevels_Previews: PreviewProvider {
    static var previews: some View {
        letterLevels()
    }
}

