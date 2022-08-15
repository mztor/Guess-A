//
//  pokemonGame.swift
//  Guess-A
//
//  Created by William Milne on 28/7/2022.
//

import SwiftUI



func typeSelect(answer: String) -> String{
    if arrays.normal.contains(answer) {
        return "normal"
    }
    if arrays.fire.contains(answer) {
        return "fire"
    }
    if arrays.grass.contains(answer) {
        return "grass"
    }
    if arrays.water.contains(answer) {
        return "water"
    }
    if arrays.electric.contains(answer) {
        return "electric"
    }
    if arrays.bug.contains(answer) {
        return "bug"
    }
    if arrays.fighting.contains(answer) {
        return "fighting"
    }
    if arrays.rock.contains(answer) {
        return "rock"
    }
    if arrays.ground.contains(answer) {
        return "ground"
    }
    if arrays.poison.contains(answer) {
        return "poison"
    }
    if arrays.psychic.contains(answer) {
        return "psychic"
    }
    if arrays.ice.contains(answer) {
        return "ice"
    }
    if arrays.ghost.contains(answer) {
        return "ghost"
    }
    if arrays.dragon.contains(answer) {
        return "dragon"
    }
    if arrays.fairy.contains(answer) {
        return "fairy"
    }
    else {
        return ""
    }
}
// Checks which type the correct Pokémon belongs to

struct submitButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(30)
            .background(Color(red: 0, green: 0.6, blue: 1))
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}
// Creates the style for the submit button

func tip(difficulty: String, answerAgain: String) -> String {
    if difficulty == "easy" {
        return "Hint: the Pokémon is the \(longList.pokedex[answerAgain]!) Pokémon"
    }
    else {
        return ""
    }
}
// Provides the hint message which includes the species name of the correct Pokémon

struct pokemonGame: View {
    
    var level: String
    var correct: String
    @State private var guess = ""
    @State private var showingIncorrectMessage = false
    @State private var showingCorrectMessage = false
    @State private var showHelpMessage = false
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        
        Text("This Pokémon is a \(typeSelect(answer: correct)) type.")
        // Creates the initial hint
        
        .alert(isPresented: $showingIncorrectMessage) {
            Alert(title: Text("Incorrect!"), message: Text(tip(difficulty: level, answerAgain: correct)), dismissButton: .default(Text("Ok")))
        }
       // Alert for incorrect guess and tip
        
        TextField("Who's that Pokémon?", text: $guess)
            .padding(5)
            .border(.black, width: 2.0)
            .padding(15)
        // Creates the initial hint
            
            .alert(isPresented: $showingCorrectMessage) {
                Alert(title: Text("Correct!"), message: Text(""), dismissButton: .default(Text("Play Again"), action: {
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

struct pokemonGame_Previews: PreviewProvider {
    
    static var previews: some View {
        
        pokemonGame(level: "", correct: "")
        
    }
}
