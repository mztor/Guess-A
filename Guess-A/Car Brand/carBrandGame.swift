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
    @State private var testDetails = false
    @State var guess = ""
    var buttonGuess = ""
    
    @State private var showDetails = false
    @State private var result = false
    
    let currentGuess = getCarBrand() //Gets a random car brand
    
    // Is this how to do it?
    //for each carBrand in [carBrands] {
    //     loadView(carBrand)
    //}
    
    
    //The view for displaying the game screen
    
    var body: some View {        
        VStack {
            Image(currentGuess.img_guess) //The image of the current guess
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .overlay {
                    RoundedRectangle(cornerRadius: 2).stroke(.black, lineWidth: 4)
                    //Makes the box around the image
                    
                }
                .padding()
                .toolbar { //Adds the toolbar menu to the top of the screen
                    ToolbarItem {
                        HStack {
                            Text("EASY - Level \(level)")
                                .font(.title)
                                .padding()
                            NavigationLink(destination: helpScreen(carBrand: currentGuess)) { //Adds a help button that goes to helpScreen view
                                Image(systemName: "questionmark.circle")
                                    .font(.largeTitle)
                            }
                        }
                    }
                }
            HStack {
                TextField("Enter Guess:", text: $guess) //Text box for user to provide answer
                    .padding()
                    .frame(width: 200.0)
                    .overlay {
                        RoundedRectangle(cornerRadius: 1).stroke(.black, lineWidth: 2)
                            .keyboardType(.default)
                    }
                    .padding()
                
                Button(action: { //Button for user to submit their answer
                    if (guess.caseInsensitiveCompare(currentGuess.name) == .orderedSame) { //Validation of answer
                        if (!result) {
                            if (currentGuess.name.caseInsensitiveCompare(guess) != .orderedSame) { //Does not increment level for incorrect answer
                                level = level + 1
                            }
                            result.toggle()
                        }
                    } else {
                        if (result) {
                            result = false
                        }
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
            Button("Test Mode") { //Allows for answer to appear for testing purposes
                testDetails.toggle()
            }
            if testDetails {
                Text(currentGuess.name)
            }
            if result {
                Text("Correct Guess, Well Done!")
            } else {
                Text("Incorrect Guess, Try Again!")
            }
        }
        .padding(.bottom, 20)
    }
}


struct carBrandGame_Previews: PreviewProvider {
    static var previews: some View {
        carBrandGame()
            .previewInterfaceOrientation(.portrait)
    }
}

//Returns a random car brand from the array of available car brands
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
