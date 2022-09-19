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
        Text("How to play Guess-A Car Brand Game: \n\nAnalyse the photo displayed and enter your guess of what you think is the name of the brand.\n\n \(carBrand.helpButtonDescription)")//continue with another \n\n and bring in the helpButtonDescription from the json
    }
}
