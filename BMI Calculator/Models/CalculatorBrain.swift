//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by herve pierre on 12/12/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBmiValue() -> String{
        let bmiTo2DecimalPlace = String(format: "%.1f", self.bmi?.value ?? 0.0)
        return bmiTo2DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        
        switch bmiValue{
        case _ where bmiValue < 18.5:
            bmi = BMI(value: bmiValue, advice: "Eat more pies!",color: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
        case _ where bmiValue >= 18.5 && bmiValue <= 24.9:
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!",color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        case _ where bmiValue > 24.9:
            bmi = BMI(value: bmiValue, advice: "Eat less pies!",color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        default:
            break
        }
        
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor()-> UIColor{
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
}
