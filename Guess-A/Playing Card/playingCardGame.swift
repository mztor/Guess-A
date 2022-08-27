//
//  playingCardGame.swift
//  Guess-A
//
//  Created by Joel Braatz on 12/8/2022.
//

import SwiftUI

struct playingCardGame: View {
    var level: String //variable declaration
    var correctOrNot = ""
    @State var showValue = "?"
    @State var suiteGuess = ""
    @State var valueGuess = ""
    let suitesArray = ["♠️", "♦️", "♣️", "♥️"]
    let valuesArray = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    @State var randomSuiteNum = Int.random(in: 0...3)
    @State var randomValueNum = Int.random(in: 0...12)
    @State var cardColour = ""
    @State private var showHelpCard = false
    @State private var showHintCard = false
    func checkGuesses() {
//        if suiteGuess == suitesArray(randomSuiteNum) {
//
//        }
    }
    var body: some View {
        VStack{
            HStack{
                Text("?")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .frame(width: 75.0, height: 115.0)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.black))
                VStack{
                    HStack {
                        Text("♠️")
                            .font(.largeTitle)
                        Text("♦️")
                            .font(.largeTitle)
                        Text("♣️")
                            .font(.largeTitle)
                        Text("♥️")
                            .font(.largeTitle)
                    }
                    Text("Number: " + showValue)
                        .font(.title)
                }
            }
            VStack{ //This VSTack starts all the code for the buttons
                HStack{
                    Button {
                        suiteGuess = "♠️"
                    } label: {
                        Text("♠️")
                            .font(.largeTitle)
                    }
                    Button {
                        suiteGuess = "♦️"
                    } label: {
                        Text("♦️")
                            .font(.largeTitle)
                    }
                    Button {
                        suiteGuess = "♣️"
                    } label: {
                        Text("♣️")
                            .font(.largeTitle)
                    }
                    Button {
                        suiteGuess = "♥️"
                    } label: {
                        Text("♥️")
                            .font(.largeTitle)
                    }
                }
                .buttonStyle(.bordered)
                HStack {
                    Button {
                        valueGuess = "A"
                    } label: {
                        Text("A")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal)
                    Button {
                        valueGuess = "2"
                    } label: {
                        Text("2")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal)
                    Button {
                        valueGuess = "3"
                    } label: {
                        Text("3")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal)
                }
                .buttonStyle(.bordered)
                HStack {
                    Button {
                        valueGuess = "4"
                    } label: {
                        Text("4")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal)
                    Button {
                        valueGuess = "5"
                    } label: {
                        Text("5")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal)
                    Button {
                        valueGuess = "6"
                    } label: {
                        Text("6")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal)
                }
                .buttonStyle(.bordered)
                HStack {
                    Button {
                        valueGuess = "7"
                    } label: {
                        Text("7")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal)
                    Button {
                        valueGuess = "8"
                    } label: {
                        Text("8")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal)
                    Button {
                        valueGuess = "9"
                    } label: {
                        Text("9")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal)
                }
                .buttonStyle(.bordered)
                HStack {
                    Button {
                        valueGuess = "10"
                    } label: {
                        Text("10")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                    .padding(.leading)
                    Button {
                        valueGuess = "J"
                    } label: {
                        Text("J")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal)
                    Button {
                        valueGuess = "Q"
                    } label: {
                        Text("Q")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal)
                }
                .buttonStyle(.bordered)
                HStack {
                    Button {
                        valueGuess = "K"
                    } label: {
                        Text("K")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal)
                    Button {
                        
                    } label: {
                        Text("ENTER")
                            .font(.largeTitle)
                            .foregroundColor(.green)
                    }
                    .padding(.horizontal)
                }
                .buttonStyle(.bordered)
            }
            Spacer()
        }
        .toolbar {
            HStack {
            if level == "Beginner" {
                Button() {
                    showHintCard.toggle()
                } label: {
                    Image(systemName: "lightbulb.circle")
                }
                .alert(isPresented: $showHintCard) {
                    Alert(title: Text("Hint!"), message: Text("The cards color is " + cardColour), dismissButton: .default(Text("Ok")))
                }
            }
            Button() {
                showHelpCard.toggle()
            } label: {
                Image(systemName: "questionmark.circle")
            }
            .alert(isPresented: $showHelpCard) {
                Alert(title: Text("Help!"), message: Text("Select one of the Suite buttons and a value for your card, then press Enter!"), dismissButton: .default(Text("Ok")))
            }
            }
        }
    }
}

struct playingCardGame_Previews: PreviewProvider {
    static var previews: some View {
        playingCardGame(level: "")
    }
}
