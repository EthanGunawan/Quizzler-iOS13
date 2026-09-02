//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Ethan J on 2026-09-01.
//  Copyright © 2026 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String){
        text = q
        answer = a
    }
    
}
