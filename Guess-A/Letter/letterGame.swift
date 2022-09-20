//
//  letterGame.swift
//  Guess-A
//
//  Created by Rowena Kite on 26/7/2022.
//

import SwiftUI

struct letterGame: View {
    
    @State private var guess = "" //creates an empty variable for the user's guess
    @State private var showingAlert = false
    var level:String
    @State private var message = ""
    @State private var guesses = ""
    @State private var caption = "OK"
    @State var random = "" //creates an empty variable for the program's random letter
    @Environment(\.presentationMode) var presentation
    @State var arrLetters = [""] //creates an empty array of possible letters to guess
    @State var score = 0 //sets up the user's score
    @State var startScore = 0
    //@State var showTestingMode: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("GUESS \n -A- \n LETTER")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.teal)
                    
                    .padding()
                
                Text("\(score)/\(startScore)")
                    .fontWeight(.semibold) //displays the user's remaining guesses out of their total allowed guesses
                TextField("Guess", text:$guess) //creates the text field for user input
                    .font(.system(size: 25))
                    .multilineTextAlignment(.center)
                    .autocapitalization(.none) //allows the input of lowercase letters
                    .padding()
                    .keyboardType(.alphabet) //restricts the keyboard to letters only
                .padding()
                
                Button("Check guess") {
                    if guess == random {
                        message = ("Correct! You finished with a score of \(score)")
                        caption = "Play again" //this message congradulates the user
                    } else if level == "Easy" && guess > random {
                        message = ("Wrong! The actual letter is: closer to 'a'")
                        score = score - 1 //checks if the user is in the 'Easy' level, and is too far up the alphabet
                    } else if level == "Easy" && guess < random {
                        message = ("Wrong! The actual letter is: closer to 'z'")
                        score = score - 1 //checks if the user is in the 'Easy' level, and is too far down the alphabet
                    } else if level == "Medium" && guess > random {
                        message = ("Wrong! The actual letter is closer to 'a' AND/OR is upper")
                        score = score - 1 //checks if the user is in the 'Medium' level, and is too far up the alphabet
                    } else if level == "Medium" && guess < random {
                        message = ("Wrong! The actual letter is closer to 'z' AND/OR is lowercase")
                        score = score - 1 //checks if the user is in the 'Medium' level, and is too far down the alphabet
                    } else if level == "Hard" && guess != random {
                        message = ("Wrong!")
                        score = score - 1 //checks if the user is in the 'Hard' level, and is wrong
                    } else if guess == " " {
                        message = ("Make sure you enter a valid letter!") //stops the program deducting a point for a space
                    } else {
                        message = ("Make sure you enter a valid letter!") //stops the program deducting a point for an empty text field
                    }
                    
                    guesses = guesses + "\n" + guess
                    
                    if score == 0 { //checks if the user is out of guesses
                        message = ("Wrong! You're out of guesses")
                        caption = "Play again"
                    }
                    
                    showingAlert.toggle()
                    guess = ""
                }
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 16).stroke(.teal, lineWidth: 2))
                .foregroundColor(.black)
                
                Text(guesses) //displays all the user's past guesses in the round
                
                Spacer()
            }
        }
        
        .alert(isPresented: $showingAlert) { //creates an alert
            Alert(
                title: Text(""),
                message: Text(message),
                dismissButton: .default(Text(caption), action: {
                    if caption == "Play again" {
                        self.presentation.wrappedValue.dismiss()
                    }
                })
            )
        }
        
        .navigationTitle(level)
        .onAppear() {
            if level == "Easy" { //sets up the specifics for the 'Easy' level
                arrLetters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"] //array of posible answers
                random = arrLetters.randomElement()! //picks a random letter
                score = 15 //keeps track of the user's score
                startScore = 15 //sets the start score so it can be displayed at the top of the screen
            } else if level == "Medium" {
                arrLetters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C","D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S","T", "U", "V", "W", "X", "Y", "Z"]
                random = arrLetters.randomElement()!
                score = 30
                startScore = 30
            } else {
                arrLetters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "Q", "ö", "ü", "ÿ", "Ä", "Ë", "Ï", "Ö", "Ü", "Ÿ", "á", "ć", "é", "í", "ń", "ó", "ś", "ú", "ý", "ź", "Á", "Ć", "É", "Í", "Ń", "Ó", "Ś", "Ú", "Ý", "Ź", "ő", "ű", "Ő", "Ű", "à", "è", "ì", "ò", "ù", "À", "È", "Ì", "Ò", "Ù", "â", "ê", "î", "ô", "û", "Ê", "Î", "Ô", "Û", "ã", "ñ", "õ", "Ã", "Ñ", "Õ", "č", "ď", "ě", "ǧ", "ň", "ř", "š", "ť", "ž", "Č", "Ď", "Ě", "Ǧ", "Ň", "Ř", "Š", "Ť", "Ž", "đ", "Đ", "å", "ů", "Å", "Ů", "ą", "ę", "Ą", "Ę", "æ", "Æ", "ø", "Ø", "ç", "Ç", "ł", "Ł", "ß", "þ", "ż", "Ż"]
                random = arrLetters.randomElement()!
                score = 60
                startScore = 60
            }
        }
    }
}

struct letterGame_Previews: PreviewProvider {
    static var previews: some View {
        letterGame(level: "")
    }
}
