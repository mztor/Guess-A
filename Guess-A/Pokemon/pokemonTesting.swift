//
//  pokemonTesting.swift
//  Guess-A
//
//  Created by William Milne on 15/8/2022.
//

import SwiftUI

func tipAgain(answerAgain: String) -> String {
    return "Hint: the Pokémon is the \(longList.pokedex[answerAgain]!) Pokémon"
}
// Provides the hint message which includes the species name of the correct Pokémon

struct pokemonTesting: View {
    var correct: String
    @State private var guess = ""
    @State private var showingIncorrectMessage = false
    @State private var showingCorrectMessage = false
    @State private var showHelpMessage = false
    @Environment(\.presentationMode) var presentation
    @State var scoreAgain: Int = 1
    
    var body: some View {
        Text("This Pokémon is \(correct) ")
        // Shows the Pokémon
        
        .alert(isPresented: $showingIncorrectMessage) {
            Alert(title: Text("Incorrect!"), message: Text(tipAgain(answerAgain: correct)), dismissButton: .default(Text("Ok")))
        }
       // Alert for incorrect guess and tip
        
        TextField("Who's that Pokémon?", text: $guess)
            .padding(5)
            .border(.black, width: 2.0)
            .padding(15)
        // Creates the initial hint
            
            .alert(isPresented: $showingCorrectMessage) {
                Alert(title: Text("Correct!"), message: Text("Score: \(scoreAgain)"), dismissButton: .default(Text("Play Again"), action: {
                    self.presentation.wrappedValue.dismiss()
                }))
            }
        // Alert for correct guess
        
        Button("Submit") {
            if guess == correct {
                showingCorrectMessage.toggle()
            }
            else {
                showingIncorrectMessage.toggle()
                self.scoreAgain += 1
                }
        }
        // Creates the submit button for when users want to submit their answers
        
            .buttonStyle(submitButton())
        
            .toolbar {
                Button() {
                    showHelpMessage.toggle()
                } label: {
                    Image(systemName: "questionmark.circle")
                }
                    .foregroundColor(.blue)
            }
        // Creates the button that causes online help to appear
        
            .alert(isPresented: $showHelpMessage) {
                Alert(title: Text("Help"), message: Text("Type into the textfield box to write your guess and then press submit to check your guess"), dismissButton: .default(Text("Ok")))
            }
        // Alert for online help
        
    }
}

struct pokemonTesting_Previews: PreviewProvider {
    static var previews: some View {
        pokemonTesting(correct: "")
    }
}
