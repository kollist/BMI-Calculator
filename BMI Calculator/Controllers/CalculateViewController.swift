//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {


    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    var calculateBMI : CalculatorBrain = CalculatorBrain(height: 1.50, weight: 100.00)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func heightSlider(_ sender: UISlider) {
        calculateBMI.height = sender.value
        heightLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        calculateBMI.weight = sender.value
        weightLabel.text = "\(String(format: "%.2f", sender.value))kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculateBMI.calculateBMI()
        print(calculateBMI.weight)
        print(calculateBMI.height)
        print(calculateBMI.BMIValue())
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            print(calculateBMI.BMIValue())
            destinationVC.BMIValue = calculateBMI.BMIValue()
            destinationVC.Advice = calculateBMI.advice()
        }
    }
    
}
