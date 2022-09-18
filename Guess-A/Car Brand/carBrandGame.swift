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

struct carBrandGame: View {
    @State private var guess = ""
    @State private var buttonGuess = ""
    
    var body: some View {
        VStack {
            let carGuess = getCarBrand()
            
            Image(carGuess.img_guess)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .overlay {
                    RoundedRectangle(cornerRadius: 2).stroke(.black, lineWidth: 4)
                }
        
            HStack {
                TextField("Enter Guess", text: $guess)
                    .padding()
                    .frame(width: 200.0)
                
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
}

struct carBrandGame_Previews: PreviewProvider {
    static var previews: some View {
        carBrandGame()
.previewInterfaceOrientation(.portrait)
    }
}

func getCarBrand() -> carBrand {
    var carBrand = carBrands!.randomElement()
    
    while alreadyTried.contains(carBrand!.name) {
        carBrand = carBrands!.randomElement()
    }
    alreadyTried.append(carBrand!.name)
    return carBrand!
}
