import UIKit

struct CalculatorBrain {
    
    var bmiValue: BMI?
    var advice: String?
    var color: UIColor?
    
    
    func getAdvice() -> String{
        return bmiValue?.advice ?? "Still checking"
    }
    
    func getColor() -> UIColor {
        return bmiValue?.color ?? UIColor.gray
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmi = Float(weight) / pow(height, 2)
        
        if bmi < 18.5 {
            bmiValue = BMI(value: String(format: "%.1f",bmi), advice: "Eat More pies", color: .blue)
        }else if bmi < 24.9 {
            bmiValue = BMI(value: String(format: "%.1f",bmi), advice: "You are Healthy", color: .green)
        }else {
            bmiValue = BMI(value: String(format: "%.1f",bmi), advice: "Eat less pies!", color: .red)
        }
    }
    
    func getBMIValue() -> String{
        return bmiValue?.value ?? "0.0"
    }
}
