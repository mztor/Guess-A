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
    var buttonGuess: String = "Guess"
    @State var arrayChars = ["Ant Man", "Black Panther", "Black Widow", "Captain America", "Captain Marvel", "Doctor Strange", "Falcon", "Groot", "Hawkeye", "Hulk", "Iron Man", "Spider Man", "Thanos", "Thor", "Vision", "Wasp"]

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
       
        if level == "Intermediate" {
            Text("Rules: You will be given an image of a character to guess who the character is. You will have 15 guesses to try and guess who the character is. You will start with 15 points and every wrong guess you loose a point. The aim is to finish with the most points possible. Goodluck!")
                    .multilineTextAlignment(.center)
                    .padding(0.2)
           
            .onAppear() {
                if level == "Intermediate" { //sets the array for the intermediate level
                    arrayChars = ["Ant Man", "Black Panther", "Black Widow", "Captain America", "Captain Marvel", "Doctor Strange", "Falcon", "Groot", "Hawkeye", "Hulk", "Iron Man", "Spider Man", "Thanos", "Thor", "Vision", "Wasp"]
                    random = arrayChars.randomElement()! //used to generate a random index of the array set to set a random value which is to be guessed
                    }
                }
            }
        Image(random)
            .resizable()
            .frame(width: 150, height: 150)
            .scaledToFit()
            .clipShape(Circle())
            .overlay(Circle()
                .stroke(.black,lineWidth: 4))
            .shadow(radius: 7)
            .padding(0.2)

        Text(random)
        .padding(0.2)

    VStack {
        VStack {
            TextField("Guess", text: $guess)
                .multilineTextAlignment(.center)
                .disableAutocorrection(true)
            Spacer()
            }
        }
        VStack {
        Button("Guess") {
                if guess == random {
                    print("Correct")
                } else {
                    print("Wrong")
                }
            }
        }
    }

        Spacer()

        .toolbar {
            Button("Help") {
                }
            }
        }
    }

    

struct marvelGame_Previews: PreviewProvider {
    static var previews: some View {
        marvelGame(guess: "", level: "")
        ContentView()
            .preferredColorScheme(.light)
        }
    }


