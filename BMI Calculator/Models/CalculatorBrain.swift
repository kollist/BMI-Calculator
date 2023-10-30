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
    var bmi : BMI?

    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = Double(weight / (height * height))

                if bmiValue < 18.5 {
                    bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .yellow)
                } else if bmiValue < 24.9 {
                    bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .cyan)
                } else {
                    bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .red)
                }
    }

    func BMIValue() -> String {
        return String(format: "%.2f", bmi?.value ?? 0.0)
    }

    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
}
