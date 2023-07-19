//
//  Answer.swift
//  TriviaGame
//
//  Created by Abdullahi Addow on 7/16/23.
//

import Foundation
struct Answer: Identifiable {
    var id = UUID() // Api doesn't return id but we need one when iterating on answers
    var text: AttributedString
    var isCorrect: Bool
}
