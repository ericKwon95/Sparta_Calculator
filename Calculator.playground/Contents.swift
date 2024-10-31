import Foundation

protocol AbstractOperation {
    func calculate(_ a: Double, _ b: Double) -> Double
}

class AddOperation: AbstractOperation {
    func calculate(_ a: Double, _ b: Double) -> Double {
        return a + b
    }
}

class SubstractOperation: AbstractOperation {
    func calculate(_ a: Double, _ b: Double) -> Double {
        return a - b
    }
}

class MultiplyOperation: AbstractOperation {
    func calculate(_ a: Double, _ b: Double) -> Double {
        return a * b
    }
}

class DivideOperation: AbstractOperation {
    func calculate(_ a: Double, _ b: Double) -> Double {
        return a / b
    }
}

class RemainderOperation: AbstractOperation {
    func calculate(_ a: Double, _ b: Double) -> Double {
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
            return AddOperation().calculate(firstNumber, secondNumber)
        case "-":
            return SubstractOperation().calculate(firstNumber, secondNumber)
        case "*":
            return MultiplyOperation().calculate(firstNumber, secondNumber)
        case "/":
            return DivideOperation().calculate(firstNumber, secondNumber)
        case "%":
            return RemainderOperation().calculate(firstNumber, secondNumber)
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
