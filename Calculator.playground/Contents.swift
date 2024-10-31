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
    
    func calculate(operation op: AbstractOperation, firstNumber: Double, secondNumber: Double) -> Double {
        op.calculate(firstNumber, secondNumber)
    }
}

let calculator = Calculator()
let addResult = calculator.calculate(operation: AddOperation(), firstNumber: 10, secondNumber: 20)
let subResult = calculator.calculate(operation: SubstractOperation(), firstNumber: 10, secondNumber: 20)
let mulResult = calculator.calculate(operation: MultiplyOperation(), firstNumber: 10, secondNumber: 20)
let divResult = calculator.calculate(operation: DivideOperation(), firstNumber: 10, secondNumber: 20)
let modResult = calculator.calculate(operation: RemainderOperation(), firstNumber: 10, secondNumber: 20)
let modResultWithZero = calculator.calculate(operation: RemainderOperation(), firstNumber: 10, secondNumber: 0)
