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
                    .foregroundColor(Color.white)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 16).fill(.green))
                }
                NavigationLink(destination: letterGame(level: "Medium")) {
                    //takes the user to the Medium level
                    Text("Medium")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 16).fill(.blue))
                }
                NavigationLink(destination: letterGame(level: "Hard")) {
                    //takes the user to the Hard level
                    Text("Hard")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 16).fill(.red))
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

