//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var bmiBrain = BmiBrain()
    
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    var height: Float?
    var weight: Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightValueChanged(_ sender: UISlider) {
        height = heightSlider.value
        heightValue.text = String(format: "%.2f", (heightSlider.value)) + "cm"
    }
    
    @IBAction func weightValueChanged(_ sender: UISlider) {
        weight = weightSlider.value
        weightValue.text = String(format: "%.0f", (weightSlider.value)) + "kg"
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        
        bmiBrain.calculateBMI(height: height!, weight: weight!)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
            if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue  = bmiBrain.getBMIValue()
            destinationVC.advice = bmiBrain.getAdvice()
            destinationVC.color = bmiBrain.getColor()
        }
    }
    
}

