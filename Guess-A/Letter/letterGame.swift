//
//  letterGame.swift
//  Guess-A
//
//  Created by Rowena Kite on 26/7/2022.
//

import SwiftUI

//var score = 0

struct letterGame: View {
    @State private var guess = ""
    @State private var showingAlert = false
    var level:String
    @State private var message = ""
    @State private var guesses = ""
    @State private var caption = "OK"
    @Environment(\.presentationMode) var presentation
    @State var arrLetters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    var body: some View {
        NavigationView {
            Form {
                VStack {
                    let random = arrLetters.randomElement()!
                    Text(random)
                    TextField("Guess", text:$guess)
                        .autocapitalization(.none)
                        .padding()
                        .keyboardType(.default)
                
                    Button("Check guess") {
                        if guess > random {
                            message = ("Wrong! The actual letter is: closer to 'a'")
                        } else if guess < random {
                            message = ("Wrong! The actual letter is: closer to 'z'")
                        } else {
                            message = ("Correct!")
                            caption = "Play again"
                        }
                        guesses = guesses + "\n" + guess
                        showingAlert.toggle()
                        guess = ""
                    }
                    .padding(5)
                    .border(Color.gray)
                    .foregroundColor(.blue)
                    
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
//            if level == "Easy" {
//                let arrLetters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
//                let random = arrLetters.randomElement()!
//                print(random)
//            } else if level == "Medium" {
//                let arrLetters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C","D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S","T", "U", "V", "W", "X", "Y", "Z"]
//                let random = arrLetters.randomElement()!
//                print(random)
//            } else {
//                let arrLetters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "Q", "ö", "ü", "ÿ", "Ä", "Ë", "Ï", "Ö", "Ü", "Ÿ", "á", "ć", "é", "í", "ń", "ó", "ś", "ú", "ý", "ź", "Á", "Ć", "É", "Í", "Ń", "Ó", "Ś", "Ú", "Ý", "Ź", "ő", "ű", "Ő", "Ű", "à", "è", "ì", "ò", "ù", "À", "È", "Ì", "Ò", "Ù", "â", "ê", "î", "ô", "û", "Ê", "Î", "Ô", "Û", "ã", "ñ", "õ", "Ã", "Ñ", "Õ", "č", "ď", "ě", "ǧ", "ň", "ř", "š", "ť", "ž", "Č", "Ď", "Ě", "Ǧ", "Ň", "Ř", "Š", "Ť", "Ž", "đ", "Đ", "å", "ů", "Å", "Ů", "ą", "ę", "Ą", "Ę", "æ", "Æ", "ø", "Ø", "ç", "Ç", "ł", "Ł", "ß", "þ", "ż", "Ż"]
//                let random = arrLetters.randomElement()!
//                print(random)
//            }
        }
    }
}

struct letterGame_Previews: PreviewProvider {
    static var previews: some View {
        letterGame(level: "")
    }
}
