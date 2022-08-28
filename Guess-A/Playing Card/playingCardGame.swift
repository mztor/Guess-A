//
//  playingCardGame.swift
//  Guess-A
//
//  Created by Joel Braatz on 12/8/2022.
//

import SwiftUI

enum ActiveAlert {
    case correct, incorrect
}

struct playingCardGame: View {
    
    //variable declaration
    
    var level: String
    
    @State var correctOrNot = ""
    
    @State var suiteGuess = ""
    
    @State var valueGuess = ""
    
    let suitesArray = ["♠️", "♦️", "♣️", "♥️"]
    
    let valuesArray = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    
    @State var randomSuiteNum = Int.random(in: 0...3)
    
    @State var randomValueNum = Int.random(in: 0...12)
    
    @State var cardColour = ""
    
    @State var guessCounter = 0
    
    @State var pointCounter = 0
    
    @State var maxScore = 0
    
    @State var suiteGuessed = false
    
    @State var valueGuessed = false
    
    @State private var showHelpCard = false
    
    @State private var showHintCard = false
    
    @State var showCorrectnessAlert = false
    
    @State var activeAlert: ActiveAlert = .incorrect
    
    @State var gameFailed = false
    
    func checkGuesses() {
        
        if suiteGuess == suitesArray[randomSuiteNum] && valueGuess == valuesArray[randomValueNum] {
            
            correctOrNot = "correct"
            
            suiteGuessed = true
            
            valueGuessed = true
        }
        else if suiteGuess == suitesArray[randomSuiteNum] {
                
            suiteGuessed = true
        }
        else if valueGuess == valuesArray[randomValueNum] {
                
            valueGuessed = true
            
        } else {
            
            correctOrNot = "no"
        }
    }
    func setColour() { //set colour of card for hint on Beginner difficult
        
        if suitesArray[randomSuiteNum] == "♠️" || suitesArray[randomSuiteNum] == "♣️" {
            
            cardColour = "black"
        }
        if suitesArray[randomSuiteNum] == "♦️" || suitesArray[randomSuiteNum] == "♥️" {
            
            cardColour = "red"
        }
    }
    func generateMaxScore() {
        
        if level == "Beginner" {
            
            maxScore = 3
            
        } else if level == "Gambler" {
            
            maxScore = 6
            
        } else if level == "Psychic" {
            
            maxScore = 9
            
        }
    }
    func generateRoundScore() {
        
        if guessCounter <= 13 {
            
            pointCounter += 1
        }
        if guessCounter <= 10 {
            
            pointCounter += 1
        }
        if guessCounter <= 6 {
            
            pointCounter += 1
        }
        if level == "Gambler" {
            
            pointCounter = pointCounter*2
            
        } else if level == "Psychic" {
            
            pointCounter = pointCounter*3
            
        }
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
                        
                        ZStack {
                            
                            if suitesArray[randomSuiteNum] == "♠️" && suiteGuessed == true {
                                
                            Circle().fill(Color.green)
                                .frame(width: 40, height: 40)
                            }
                            
                            Text("♠️")
                                .font(.largeTitle)
                            
                        }
                        
                        ZStack {
                            
                            if suitesArray[randomSuiteNum] == "♦️" && suiteGuessed == true {
                                
                            Circle().fill(Color.green)
                                .frame(width: 40, height: 40)
                            }
                            
                            Text("♦️")
                                .font(.largeTitle)
                            
                        }
                        
                        ZStack {
                            
                            if suitesArray[randomSuiteNum] == "♣️" && suiteGuessed == true {
                                
                            Circle().fill(Color.green)
                                .frame(width: 40, height: 40)
                            }
                            
                            Text("♣️")
                                .font(.largeTitle)
                            
                        }
                        
                        ZStack {
                            
                            if suitesArray[randomSuiteNum] == "♥️" && suiteGuessed == true {
                                
                            Circle().fill(Color.green)
                                .frame(width: 40, height: 40)
                            }
                            
                            Text("♥️")
                                .font(.largeTitle)
                            
                        }
                        
                    }
                    if level != "Psychic" {
                        if valueGuessed == true {
                            
                            Text("Value: " + valuesArray[randomValueNum])
                                .font(.title)
                            
                        } else {
                            
                            Text("Value: ?")
                                .font(.title)
                        }
                    }
                }
            }
            VStack{ //This VStack starts all the code for the buttons
               
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
                    
                    
                    Button {  //submission button
                        
                        guessCounter += 1
                        
                        checkGuesses()
                        
                        if correctOrNot == "correct" {
                            
                            self.activeAlert = .correct
                            
                            generateMaxScore()
                            
                            generateRoundScore()
                            
                        } else if correctOrNot == "no" {
                            
                            self.activeAlert = .incorrect
                            
                        }
                        showCorrectnessAlert.toggle()
                        
                    } label: {
                        
                        Text("ENTER")
                            .font(.largeTitle)
                            .foregroundColor(.green)
                    }
                    .alert(isPresented: $showCorrectnessAlert) {
                        switch activeAlert {
                        case .correct:
                            return Alert(title: Text("Correct!"), message: Text("You guessed the playing Card! 🥳"), dismissButton: .default(Text("Ok")))
                        case .incorrect:
                            return Alert(title: Text("Incorrect!"), message: Text("You guessed incorrectly. 😢"), dismissButton: .default(Text("Ok")))
                        }
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
                    
                    setColour()
                    
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
