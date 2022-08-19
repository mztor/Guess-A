//
//  letterGame.swift
//  Guess-A
//
//  Created by Rowena Kite on 26/7/2022.
//

import SwiftUI

struct letterGame: View {
    @State private var guess = ""
    @State private var showingAlert = false
    var level:String
    @State private var message = ""
    @State private var guesses = ""
    @State private var caption = "OK"
    @State var random = ""
    @Environment(\.presentationMode) var presentation
    @State var arrLetters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    @State var score = 0
    @State var startScore = 0
    var body: some View {
        NavigationView {
            Form {
                VStack {
                    Text("\(random) \(score)/\(startScore)")
                    TextField("Guess", text:$guess)
                        .font(.system(size: 25))
                        .multilineTextAlignment(.center)
                        .autocapitalization(.none)
                        .padding()
                        .keyboardType(.default)
                    
                
                    Button("Check guess") {
                        if level == "Easy" && guess > random {
                            message = ("Wrong! The actual letter is: closer to 'a'")
                            score = score - 1
                        } else if level == "Easy" && guess < random {
                            message = ("Wrong! The actual letter is: closer to 'z'")
                            score = score - 1
                        } else if level == "Medium" && guess > random {
                            message = ("Wrong! The actual letter is closer to 'a' AND/OR is lowercase")
                            score = score - 1
                        } else if level == "Medium" && guess < random {
                            message = ("Wrong! The actual letter is closer to 'z' AND/OR is uppercase")
                            score = score - 1
                        } else if level == "Hard" && guess != random {
                            message = ("Wrong!")
                            score = score - 1
                        } else if guess == "" {
                            message = ("Make sure you enter a letter!")
                        } else {
                            message = ("Correct! You finished with a score of: \(score)")
                            caption = "Play again"
                        }
                        guesses = guesses + "\n" + guess
                        showingAlert.toggle()
                        guess = ""
                    }
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(.blue, lineWidth: 2))
                    .foregroundColor(.black)
                    
                    Text(guesses)
                }
            }
        }
        .alert(isPresented: $showingAlert) {
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
            if level == "Easy" {
                arrLetters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
                random = arrLetters.randomElement()!
                score = 15
                startScore = 15
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
        .background(Color.white)
    }
}

struct letterGame_Previews: PreviewProvider {
    static var previews: some View {
        letterGame(level: "")
    }
}
