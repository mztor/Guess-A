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
    @State var showingAlert = false
    @State var score = 15

    var level: String
    
    @State var message: String = ""
    @State var random: String = ""
    @State var categories: String = ""
    @State var buttonGuess: String = "Guess"
    @State var caption = "OK"
    @Environment(\.presentationMode) var presentation
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
                    Text("Rules: You will be given an image of character and the aim is to try and guess which marvel character it is. Goodluck!")
                            .multilineTextAlignment(.center)
                            .padding()
                   
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
                    Spacer()
                    .padding(0.2)
               


                
                VStack {
                    TextField("Guess", text: $guess)
                        .keyboardType(.default)
                        .multilineTextAlignment(.center)
                        .disableAutocorrection(true)
                    Spacer()
                }

            Button("Guess") {
                if guess == random {
                    message = ("Your guess was correct! Congrats")
                } else {
                    message = ("You guess was incorrect. Please Try Again")
                }
                showingAlert.toggle()

            }
            Spacer()
                
            .alert(isPresented: $showingAlert) {
                Alert(
                    title: Text(""), message: Text(message),
                        dismissButton: .default(Text(caption), action:{
                        if caption == "Play Again" {
                            self.presentation.wrappedValue.dismiss()
                        }
                    })
                )
            }
        }

        .toolbar {
            Button("?") {
                message = ("To play, type in your guess and press guess. It will then determine whether your guess is correct or not.")
                showingAlert.toggle()

                }
            .alert(isPresented: $showingAlert) {
                Alert(
                    title: Text(""), message: Text(message),
                        dismissButton: .default(Text(caption), action:{
                    })
                )
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


