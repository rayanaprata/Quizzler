//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by C94280a on 21/01/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
