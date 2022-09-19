//
//  carBrandGame.swift
//  Guess-A
//
//  Created by Benjamin Abdy on 17/9/2022.
//

import SwiftUI

let carBrands = ModelData().loadJson(filename: "carBrandDataUpdated.json")
var alreadyTried = [String]()
var currentGuess: carBrand?
var carGuessVisible = false

struct carBrandGame: View {
    @State var guess = ""
    @State var buttonGuess = ""
    @State var other = ""
    @State private var showDetails = false
    
    let currentGuess = getCarBrand()
    
    var body: some View {
        VStack {
            
            
            NavigationLink(destination: helpScreen()) {
                Text("Help")
//                    .toolbar {
//                        ToolbarItem {
//                            Button("Help") {
//                                helpScreen()
//                            }
//                        }
                    }
            }
            
            Image(currentGuess.img_guess)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .overlay {
                    RoundedRectangle(cornerRadius: 2).stroke(.black, lineWidth: 4)
                }
            HStack {
                Text("Enter Guess:")
                TextField("Enter Guess", text: $other)
                    .onSubmit({guessSubmitted()})
                    .padding()
                    .frame(width: 200.0)
                    .keyboardType(.default)
                
                Button(action: {
                    self.buttonGuess = self.guess
                }) {
                    Text("Submit Guess")
                        .foregroundColor(.black)
                        .frame(width: 60)
                        .padding(.all)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            
            
//            Image("ferrari_guess")
//                .resizable(resizingMode: .stretch)
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 200, height: 200)
//                .overlay {
//                    RoundedRectangle(cornerRadius: 2).stroke(.black, lineWidth: 4)
//                }
//
//            HStack {
//                TextField("Enter Guess", text: $guess)
//                    .padding()
//                    .frame(width: 200.0)
//
//                Button(action: {
//                    self.buttonGuess = self.guess
//                }) {
//                    Text("Submit Guess")
//                        .foregroundColor(.black)
//                        .frame(width: 60)
//                        .padding(.all)
//                        .background(Color.blue)
//                        .cornerRadius(10)
//                }
//            }
        }
    }


struct carBrandGame_Previews: PreviewProvider {
    static var previews: some View {
        carBrandGame()
.previewInterfaceOrientation(.portrait)
    }
}

func getCarBrand() -> carBrand {
    // todo: this needs work
    if carGuessVisible {
        return currentGuess!
    }
    
    var carBrand = carBrands!.randomElement()
    
    while alreadyTried.contains(carBrand!.name) {
        carBrand = carBrands!.randomElement()
    }
    alreadyTried.append(carBrand!.name)
    return carBrand!
}

func guessSubmitted() {
    carGuessVisible = true
}
