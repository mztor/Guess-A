//
//  helpScreen.swift
//  Guess-A
//
//  Created by Benjamin Abdy on 19/9/2022.
//

import Foundation
import SwiftUI

struct helpScreen: View {
    var carBrand: carBrand
    var body: some View {
        VStack{
            Text("How to play Guess-A Car Brand Game:")
                .font(.headline)
            Text("\n\n\n\nAnalyse the photo displayed and enter your guess of what you think is the name of the brand.\n\n")
                .padding(10)
                 
            Image(carBrand.img_guess)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .overlay {
                    RoundedRectangle(cornerRadius: 2).stroke(.black, lineWidth: 4)
                }
            Text("\n\n\(carBrand.helpButtonDescription)")
                .padding(10)

        }
        .padding(.bottom, 100)
    }
}
