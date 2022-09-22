//
//  question.swift
//  Guess-A
//
//  Created by Harris Awan on 12/8/2022.
//

import Foundation
public var endGame = false
public var randomNum1 = Int.random(in: 1..<8)
public var maxScore = 8
public var currentScore = 0
public var correctAnswer = Int.random(in: 1..<3)
public var roundCount = 0
func generaterandomNum (){
    randomNum1 = Int.random(in: 1..<8)
}
public var score = 0
