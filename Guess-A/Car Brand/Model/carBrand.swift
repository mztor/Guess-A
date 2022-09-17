//
//  carBrand.swift
//  Guess-A
//
//  Created by Benjamin Abdy on 17/9/2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct carBrand: Hashable, Codable {
    var name: String
    var difficulty: String
    var helpButtonDescription: String
    
    private var img_guess: String
    var imageGuess: Image {
        Image(img_guess)
    }
    private var img_answer: String
    var imageAnswer: Image {
        Image(img_answer)
    }
}

