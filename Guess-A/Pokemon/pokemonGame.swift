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
struct submitButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(30)
            .background(Color(red: 0, green: 0.6, blue: 1))
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}
struct pokemonGame: View {
    var level: String
    var correct: String
    @State private var guess = ""
    @State private var showingIncorrectMessage = false
    @State private var showingCorrectMessage = false
    @Environment(\.presentationMode) var presentation
    var body: some View {
        Text(correct)
        Text("The Pokémon is a \(typeSelect(answer: correct)) type.")
        .alert(isPresented: $showingIncorrectMessage) {
            Alert(title: Text(""), message: Text("incorrect"), dismissButton: .default(Text("ok")))
        }
        TextField("Who's that Pokémon", text: $guess)
            .padding(20)
        Button("Submit") {
            if guess == correct {
                showingCorrectMessage.toggle()
            }
            else {
                showingIncorrectMessage.toggle()
            }
        }
            .buttonStyle(submitButton())
        .alert(isPresented: $showingCorrectMessage) {
            Alert(title: Text(""), message: Text("correct"), dismissButton: .default(Text("ok"), action: {
                self.presentation.wrappedValue.dismiss()
            }))
        }
            .toolbar {
                Image(systemName: "questionmark.circle")
                    .foregroundColor(.blue)
            }
    }
}

struct pokemonGame_Previews: PreviewProvider {
    static var previews: some View {
        pokemonGame(level: "", correct: "")
    }
}
