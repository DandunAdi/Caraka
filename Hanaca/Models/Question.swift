//
//  Question.swift
//  Hanaca
//
//  Created by DDD on 01/06/20.
//  Copyright © 2020 Dandun Adi. All rights reserved.
//

import Foundation

struct Question {
    let questionText: String
    let answers: [String]
    let correctAnswer: String
    
    init(q: String, a:[String], correctAnswer: String) {
        questionText = q
        answers = a
        self.correctAnswer = correctAnswer
    }
}

struct QuizBrain {
    let questions = [
        Question(q: "[wd=bubuk\\", a: ["Kembang aren", "Wedang bubuk", "Wedang kopi"], correctAnswer: "Wedang bubuk"),
        Question(q: "munDkTuw", a: ["Mundhak tuwa", "Munthul tela", "Maca buku"], correctAnswer: "Mundhak tuwa"),
        Question(q: "pknSpi", a: ["Panen pari", "Bakul roti", "Pakan sapi"], correctAnswer: "Pakan sapi"),
        Question(q: "aibutinFk\\", a: ["Ibu numpak", "Abu lahab", "Ibu tindak"], correctAnswer: "Ibu tindak"),
        Question(q: "kc=", a: ["Bawang", "Kacang", "Ladang"], correctAnswer: "Kacang"),
        Question(q: "ajini=diri", a: ["Ajining dhiri", "Saka lathi", "Kaliyan adhi"], correctAnswer: "Ajining dhiri"),
        Question(q: "mc[korn\\", a: ["Maca buku", "Maca komik", "Maca koran"], correctAnswer: "Maca koran"),
        Question(q: "m=ktSe[kolh", a: ["Mangkat sekolah", "Mangkat kuliah", "Mangan uyah"], correctAnswer: "Mangkat sekolah"),
        Question(q: "lgisinau", a: ["Gula legi", "Lagi galau", "Lagi sinau"], correctAnswer: "Lagi sinau"),
        Question(q: "kpnNikh", a: ["Kapan nikah", "Mangkat kuliah", "Weteng begah"], correctAnswer: "Kapan nikah")
    ]
    
    var questionNumber = 0
    var score = 0
    var isOver = false
    
    func showQuestionText() -> String {
        return questions[questionNumber].questionText
    }
    
    func showAnswerText(_ index: Int) -> String {
        return questions[questionNumber].answers[index]
    }
    
    mutating func checkAnswer(_ userAnswer: String) {
        if userAnswer == questions[questionNumber].correctAnswer {
            print("Right!")
            score += 1
        }  else {
            print("Wrong!")
        }
    }
    
    func getProgressBar() -> Float {
        return Float(questionNumber+1)/Float(questions.count)
    }
    
    mutating func nextQuestion(){
        if questionNumber < questions.count-1 {
            questionNumber += 1
        } else {
            isOver = true
            questionNumber = 0
        }
    }
}

