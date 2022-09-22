//
//  carBrand.swift
//  Guess-A
//
//  Created by Benjamin Abdy on 17/9/2022.
//

import Foundation

struct CarData: Decodable {
    var carBrand: [carBrand]
}

//json decodable carBrand definition
struct carBrand: Decodable {
    var name: String
    var difficulty: String
    var helpButtonDescription: String
    var img_guess: String
    var img_answer: String
}
