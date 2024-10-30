//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by 김민규 on 10/30/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        //        bmi = weight / (height * height)
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "적정 체중보다 낮습니다!⚠️", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "정상입니다!🎉", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "체중 감량이 필요합니다!🚨", color: #colorLiteral(red: 0.9686274529, green: 0.1795641061, blue: 0.2052509145, alpha: 1))
        }
        
    }
    
    func getBMIValue() -> String {
        let bmiTO1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTO1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
}
