//
//  question.swift
//  Guess-A
//
//  Created by Harris Awan on 12/8/2022.
//

import Foundation
public var randomNum1 = Int.random(in: 1..<8)
public var randomNum2 = Int.random(in: 1..<8)
public var randomNum3 = Int.random(in: 1..<8)
public var maxScore = 8
public var currentScore = 0
public var correctAnswer = Int.random(in: 1..<3)
func generaterandomNum (){
    randomNum1 = Int.random(in: 1..<8)
    randomNum2 = Int.random(in: 1..<8)
    randomNum3 = Int.random(in: 1..<8)
    while randomNum2 == randomNum1 || randomNum2 == randomNum3{
        randomNum2 = Int.random(in: 1..<8)
    }
    while randomNum3 == randomNum2 || randomNum3 == randomNum1{
        randomNum3 = Int.random(in: 1..<8)
        
    }
}

struct answer{
    
    
}

