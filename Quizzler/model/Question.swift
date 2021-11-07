//
//  Question.swift
//  Quizzler
//
//  Created by fernando babonoyaba on 11/6/21.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
