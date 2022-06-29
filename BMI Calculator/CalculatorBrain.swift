import Foundation

struct CalculatorBrain {
    
    var bmiValue: String?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmi = Float(weight) / pow(height, 2)
        bmiValue = String(format: "%.1f", bmi);
    }
    
    func getBMIValue() -> String{
        return bmiValue!
    }
}
