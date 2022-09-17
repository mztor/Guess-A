//
//  MarvelGame.swift
//  Guess-A
//
//  Created by Alexandra Southern on 28/7/22.
//

import SwiftUI

struct marvelGame: View {
    var chars = ["Ant Man", "Black Panther", "Black Widow", "Captain America", "Captain Marvel", "Doctor Strange", "Falcon", "Groot", "Hawkeye", "Hulk", "Iron Man", "Spider Man", "Thanos", "Thor", "Vision", "Wasp", "Gamora", "Loki", "Winter Soldier", "Ultron"]
    
var level: String
    
var body: some View {
    
    VStack {
        VStack {
            Text("GUESS")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(0.2)
            
            Text("- A -")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(0.2)
               
            Text("MARVEL CHARACTER")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(0.2)
                .foregroundColor(.red)
        }
        Text("Intermediate")
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding(0.2)
             
        Text("Rules: You will be given an image of a character to guess who the character is. You will have 15 guesses to try and guess who the character is. You will start with 15 points and every wrong guess you loose a point. The aim is to finish with the most points possible. Goodluck!")
            .multilineTextAlignment(.center)

        .padding()
        Spacer()
        
        }
        
    }
}
struct marvelGame_Previews: PreviewProvider {
    static var previews: some View {
        marvelGame(level: "")
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
        }
    }


