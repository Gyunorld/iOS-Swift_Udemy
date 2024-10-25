//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    var timer = Timer()
    var totalTime = 0
    var secondPassed = 0
    var player: AVAudioPlayer!

    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        
        // 다른 타이머를 눌렀을 때 기존 타이머 종료
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        
        progressBar.progress = 0.0
        secondPassed = 0
        titleLabel.text = hardness
        
        // Timer사용법 구글링
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
        // if-else (5개이하의 경우에서 사용하는 것을 권장)
//        if hardness == "Soft" {
//            print(softTime)
//        } else if hardness == "Medium" {
//            print(mediumTime)
//        } else {
//            print(hardTime)
//        }
        
        // switch
//        switch hardness {
//        case "Soft":
//            print(softTime)
//        case "Medium":
//            print(mediumTime)
//        case "Hard":
//            print(hardTime)
//        default:
//            print("Not Available")
//        }
        
        
    }
    
    @objc func updateTimer() {
        if secondPassed < totalTime {
            secondPassed += 1
            let percentageProgress = Float(secondPassed) / Float(totalTime)
            print(percentageProgress)
            progressBar.progress = percentageProgress
            print(Float(percentageProgress))
        } else {
            timer.invalidate()
            titleLabel.text = "달걀을 꺼내주세요!✅"
            playAlert()
        }
    }
    
    func playAlert() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
        // 2초 뒤에 재생 멈추기
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                self.player.stop()
        }
    }
    
}
