//
//  question.swift
//  Guess-A
//
//  Created by Harris Awan on 12/8/2022.
//

import Foundation

struct  question {
    
    var question : String
    var answer : String
    
    init(q : String, a : String) {
        self.question = q
        self.answer = a
    }
    
    func getQuestion() -> String {
        return self.question
    }
    
    func getAnswer() -> String {
        return self.question
    }
}
