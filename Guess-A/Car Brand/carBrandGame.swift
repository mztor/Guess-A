//
//  carBrandGame.swift
//  Guess-A
//
//  Created by Benjamin Abdy on 17/9/2022.
//

import SwiftUI

struct carBrandGame: View {
    @State private var guess = ""
    @State private var buttonGuess = ""

    var body: some View {
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
    }
}

struct carBrandGame_Previews: PreviewProvider {
    static var previews: some View {
        carBrandGame()
    }
}
