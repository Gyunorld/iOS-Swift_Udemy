//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    // 2차원 배열
//    let quiz = [
//        ["4 더하기 2 는 6 이다.","True"],
//        ["5 빼기 3 은 1보다 크다.","True"],
//        ["3 더하기 8은 10보다 작다.", "False"]
//    ]
    
    // struct(구조체)
    // init을 사용하지 않을 경우
//    let quiz = [
//        Question(text: "4 더하기 2 는 6 이다.", answer: "True"),
//        Question(text: "5 빼기 3 은 1보다 크다.", answer: "True"),
//        Question(text: "3 더하기 8은 10보다 작다.", answer: "False")
//    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        // 2차원 배열 사용 시
//        let actualAnswer = quiz[questionNumber][1]
        // struct 사용 1
//        let actualAnswer = quiz[questionNumber].answer
        
        // struct 사용 2
//        let actualQuestion = quiz[questionNumber]
//        let actualAnswer = actualQuestion.answer
        
        // MVC 패턴
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
//        questionLabel.text = quiz[questionNumber][0]
        
        // MVC 적용 전
//        questionLabel.text = quiz[questionNumber].text
//        progressBar.progress = Float(questionNumber + 1) / Float(quiz.count)
        
        // MVC 적용 후
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
}

