import Foundation

/// calculate 함수의 추상화를 담당하는 프로토콜
protocol AbstractOperation {
    func calculate(_ a: Double, _ b: Double) -> Double
}

/// 덧셈 연산을 담당하는 클래스
class AddOperation: AbstractOperation {
    func calculate(_ a: Double, _ b: Double) -> Double {
        let result = a + b
        
        // overflow 체크
        guard result.isFinite else {
            return .infinity
        }
        return a + b
    }
}

/// 뺄셈 연산을 담당하는 클래스
class SubstractOperation: AbstractOperation {
    func calculate(_ a: Double, _ b: Double) -> Double {
        let result = a - b
        
        // overflow 체크
        guard result.isFinite else {
            return .infinity
        }
        return a - b
    }
}

/// 곱셈 연산을 담당하는 클래스
class MultiplyOperation: AbstractOperation {
    func calculate(_ a: Double, _ b: Double) -> Double {
        let result = a * b
        
        // overflow 체크
        guard result.isFinite else {
            return .infinity
        }
        return a * b
    }
}

/// 나눗셈 연산을 담당하는 클래스
class DivideOperation: AbstractOperation {
    func calculate(_ a: Double, _ b: Double) -> Double {
        // 0으로 나눴을 때 체크
        guard b != 0 else {
            return .infinity
        }
        
        let result = a / b
        
        // overflow 체크
        guard result.isFinite else {
            return .infinity
        }
        return a / b
    }
}

/// 나머지 연산을 담당하는 클래스
class RemainderOperation: AbstractOperation {
    func calculate(_ a: Double, _ b: Double) -> Double {
        // 0으로 나눴을 때 체크
        guard b != 0 else {
            return .infinity
        }
        
        return a.truncatingRemainder(dividingBy: b)
    }
}

/// 계산기 클래스
class Calculator {
    
    /// 주입받은 AbstractOperation 타입을 준수해는 객체의 calculate 함수를 이용해 연산을 수행하는 함수
    /// - Parameters:
    ///   - op: 어떤 연산을 수행할 것인지 나타내는 AbstractOperation 타입의 인자
    ///   - firstNumber: 연산을 진행할 첫 번째 숫자
    ///   - secondNumber: 연산을 진행할 두 번째 숫자
    /// - Returns: 연산 결과
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
