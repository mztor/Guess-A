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
            VStack {
                NavigationLink(destination: letterGame(level: "Easy")) {
                    //takes the user to the Easy level
                    Text ("Easy")
                    .font(.title)
                    }
                    .padding()
                    .foregroundColor(.green)
                NavigationLink(destination: letterGame(level: "Medium")) { //takes the user to the Medium level
                    Text("Medium")
                    .font(.title)
                    }
                    .padding()
                    .foregroundColor(.blue)
                NavigationLink(destination: letterGame(level: "Hard")) {
                    //takes the user to the Hard level
                    Text("Hard")
                    .font(.title)
                    }
                    .padding()
                    .foregroundColor(.red)
            }
            .navigationBarTitle("Guess-A-Letter")
        }
        .toolbar {
            Button("Help"){
                showHelp() //show the help for Guess a number difficulty
            }
        }
    }
}
 
struct letterLevels_Previews: PreviewProvider {
    static var previews: some View {
        letterLevels()
    }
}

