//
//  BmiBrain.swift
//  BMI Calculator
//
//  Created by Deniz Toprakkazar on 12.08.2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct BmiBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight/pow(2,height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)) }
        else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        }
        else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
        }
        
        
    }
    
      func getAdvice() -> String {
        return bmi?.advice ?? "sorry I encountered an error"
    }
        func getColor() -> UIColor{
            return bmi?.color ?? UIColor.black
    }
    
    func getBMIValue() -> String?{
        let bmiStr = String(format: "%1.f", bmi?.value ?? 0.0)
        return bmiStr
       
    }
}
