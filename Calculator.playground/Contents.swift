import Foundation

class Calculator {
    
    func calculate(operator op: String, firstNumber: Double, secondNumber: Double) -> Double {
        switch op {
        case "+":
            return firstNumber + secondNumber
        case "-":
            return firstNumber - secondNumber
        case "*":
            return firstNumber * secondNumber
        case "/":
            return firstNumber / secondNumber
        default:
            return 0
        }
    }
}

let calculator = Calculator()
let addResult = calculator.calculate(operator: "+", firstNumber: 10, secondNumber: 20)
let subResult = calculator.calculate(operator: "-", firstNumber: 10, secondNumber: 20)
let mulResult = calculator.calculate(operator: "*", firstNumber: 10, secondNumber: 20)
let divResult = calculator.calculate(operator: "/", firstNumber: 10, secondNumber: 20)
