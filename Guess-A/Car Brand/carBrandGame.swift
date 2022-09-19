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
var level = 1

//let currentGuess = getCarBrand()

struct carBrandGame: View {
    @State var guess = ""
    @State var buttonGuess = ""
    @State var other = ""
    @State private var showDetails = false
    
    let currentGuess = getCarBrand()
    
    
    var body: some View {
        VStack {
            Image(currentGuess.img_guess)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .overlay {
                    RoundedRectangle(cornerRadius: 2).stroke(.black, lineWidth: 4)
                }
            
                    .toolbar {
                        ToolbarItem {
                            HStack {
                                Text("EASY - Level \(level)")
                                    .font(.title)
                                NavigationLink(destination: helpScreen(carBrand: currentGuess)) {
                                    Image(systemName: "questionmark.circle")
                                        .font(.largeTitle)
                                }
                            }
                        }
                    }
                }
            
            

            HStack {
                TextField("Enter Guess:", text: $other)
//
                    //.onSubmit({guessSubmitted()})
                    .padding()
                    .frame(width: 200.0)
                    .overlay {
                            RoundedRectangle(cornerRadius: 1).stroke(.black, lineWidth: 2)
                    .keyboardType(.default)
                    }
                
                Button(action: {
                    self.buttonGuess = self.other
                    if (self.guess == currentGuess.name) {
                        level = level + 1
                        //getCarBrand()
                    }
                        
                    // if buttonGuess == carBrand.name
                    //    increment the level
                    //    go to the next picture
                    
                }) {
                    Text("Submit Guess")
                        .foregroundColor(.black)
                        .frame(width: 60)
                        .padding(.all)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
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
