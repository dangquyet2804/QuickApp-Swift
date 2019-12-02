//
//  Question.swift
//  4.QuizMultis
//
//  Created by Dang Xuan Quyet on 12/2/19.
//  Copyright © 2019 Mac pro. All rights reserved.
//

import Foundation
struct Question {
    let question: String
    let answer: [String]
    let rightAnswer: String
    
    init(q: String, a: [String], correctAnswer: String ) {
        question = q
        answer = a
        rightAnswer = correctAnswer
    }
}
