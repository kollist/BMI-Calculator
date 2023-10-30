//
//  Bmi.swift
//  BMI Calculator
//
//  Created by Zaytech Mac on 25/10/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit


struct CalculatorBrain {
    var height: Float
    var weight: Float
    var BMI: BMI?

    init(height: Float, weight: Float) {
        self.height = height
        self.weight = weight
    }

    mutating func calculateBMI() {
        let bmiValue = Double(weight / (height * height))
        let bodyType = (bmiValue < 18.5) ? "Underweight" : (bmiValue > 24.9 ? "Overweight" : "Normal")
        BMI = BMI_Calculator.BMI(value: bmiValue, advice: bodyType, color: UIColor.white)
    }

    func BMIValue() -> String {
        return String(format: "%.2f", BMI?.value ?? 0.0)
    }

    func advice() -> String {
        return BMI!.advice
    }
}
