//
//  Qustion.swift
//  WhiteAppTest
//
//  Created by Admin on 01.06.2021.
//

import Foundation

struct Quiz: Codable {
    let title: String
    let description: String
    let questions: [Question]
    let backgroundItem: String
    let backgroundView: String
    let isOpen: Bool
    let responseRanges: [ResponseRanges]
    var quizResult = 0
}

struct ResponseRanges: Codable {
    let range: ClosedRange<Int>
    let title: String
    let description: String
}

struct Question: Codable {
    let text: String
    let answers: [Answer]
    var selectedAnswer: Int? = nil
}

struct Answer: Codable {
    let text: String
    let scrore: Int
}
