//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by 김민규 on 10/28/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//
import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "꽁꽁 얼어붙은 한강 위로 걸어다니는 것은?", a: ["강아지", "고양이", "기자"], correctAnswer: "고양이"),
               Question(q: "유학까지 다녀온 최재림 배우의 전공은?", a: ["연극", "영화", "묵찌빠"], correctAnswer: "묵찌빠"),
               Question(q: "없는 게 없는 oooo", a: ["무한도전", "1박2일", "복면가왕"], correctAnswer: "무한도전"),
               Question(q: "다음 중 캐치 티니핑이 아닌 것은?", a: ["하츄핑", "포실핑", "시진핑"], correctAnswer: "시진핑"),
               Question(q: "갑자기 비가 와서 추워 그런데 운치있는 빗소리를 들을 수 있으니까 완전 oooo잖아🍀", a: ["핑키퐁키", "럭키비키", "삐끼삐끼"], correctAnswer: "럭키비키"),
               Question(q: "네가 미안해 한마디만 했잖아 나 oooo 이딴거 안 나왔어", a: ["솔로지옥", "나는솔로", "환승연애"], correctAnswer: "환승연애"),
               Question(q: "다음 중 야채의 익힘정도가 중요한 사람은?", a: ["안성재", "백종원", "최현석"], correctAnswer: "안성재"),
               Question(q: "다음 중 막걸리를 좋아하는 사람은?", a: ["에드워드 리", "이균", "나폴리 맛피아"], correctAnswer: "이균"),
               Question(q: "채영이가 좋아하는 랜덤게임은?", a: ["바니바니", "딸기게임", "아파트"], correctAnswer: "아파트"),
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].rightAnswer {
            // 정답일 경우
            score += 1
            return true
        } else {
            // 오답일 경우
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    func getAnswers() -> [String] {
        return quiz[questionNumber].answers
    }
    
}
