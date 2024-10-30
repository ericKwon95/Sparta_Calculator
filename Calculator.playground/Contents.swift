import Foundation

class AddOperation {
    func add(_ a: Double, _ b: Double) -> Double {
        return a + b
    }
}

class SubstractOperation {
    func substract(_ a: Double, _ b: Double) -> Double {
        return a - b
    }
}

class MultiplyOperation {
    func multiply(_ a: Double, _ b: Double) -> Double {
        return a * b
    }
}

class DivideOperation {
    func divide(_ a: Double, _ b: Double) -> Double {
        return a / b
    }
}

class RemainderOperation {
    func remainder(_ a: Double, _ b: Double) -> Double {
        guard b != 0 else {
            return .infinity
        }
        return a.truncatingRemainder(dividingBy: b)
    }
}

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
        case "%":
            guard secondNumber != 0 else {
                return .infinity
            }
            return firstNumber.truncatingRemainder(dividingBy: secondNumber)
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
let modResult = calculator.calculate(operator: "%", firstNumber: 10, secondNumber: 20)
let modResultWithZero = calculator.calculate(operator: "%", firstNumber: 10, secondNumber: 0)
