//
//  MarvelGame.swift
//  Guess-A
//
//  Created by Alexandra Southern on 28/7/22.
//

import SwiftUI
import UIKit
import AssetsLibrary

struct marvelGame: View {
    @State var guess: String = ""
    var level: String
    @State var message: String = ""
    @State var random: String = ""
    @State var categories: String = ""
    @State var arrayChars = ["Ant Man", "Black Panther", "Black Widow", "Captain America", "Captain Marvel", "Doctor Strange", "Falcon", "Groot", "Hawkeye", "Hulk", "Iron Man", "Spider Man", "Thanos", "Thor", "Vision", "Wasp"]
    @State var arrayCategories = ["Avengers", "Villains", "Guardians"]
    
    
    

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
        Text(level)
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding(0.2)
             
        Text("Rules: You will be given an image of a character to guess who the character is. You will have 15 guesses to try and guess who the character is. You will start with 15 points and every wrong guess you loose a point. The aim is to finish with the most points possible. Goodluck!")
                .multilineTextAlignment(.center)
                .padding(0.2)
        
            .onAppear() {
                if level == "Intermediate" {
                    arrayChars = ["Ant Man", "Black Panther", "Black Widow", "Captain America", "Captain Marvel", "Doctor Strange", "Falcon", "Groot", "Hawkeye", "Hulk", "Iron Man", "Spider Man", "Thanos", "Thor", "Vision", "Wasp"]
                    random = arrayChars.randomElement()!

                    }
                }
            }

        VStack {
            Image(random)
                .clipShape(Circle())
            
            Text(random)
            .padding(0.2)

            HStack {
                Text("Guess:")
                TextField(
                    "Guess",
                    text: $guess
                    )
                .onSubmit {
                    if guess == random {
                        print("Correct")
                          
                    }
                }
            }
        }
        
            .padding()
            Spacer()
    }
   
    
        }
struct marvelGame_Previews: PreviewProvider {
    static var previews: some View {
        marvelGame(guess: "", level: "")
        ContentView()
            .preferredColorScheme(.light)
        }
    }


