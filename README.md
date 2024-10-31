# Sparta_Calculator
- 내일배움 캠프 진행 중 작업하게 된 계산기 구현 과제 입니다.
- Xcode Playground를 활용, Swift로 간단한 계산기 클래스를 작성해 보았습니다.

## 개발 환경
- OS: macOS 15.0.1
- IDE: Xcode 16.1

## 고민한 점
- 프로토콜을 사용한 추상화
  - 프로토콜을 활용해 calculate 함수를 추상화하여 연산자에 대응하여 각 구현체를 가지는 객체를 주입받아 Calculator 클래스를 연산자의 변경에도 영향받지 않도록 구현해 보았습니다.
- 예외 처리
  - overflow가 났을 시 infinity 반환을 통해 확인할 수 있도록 하였습니다.
  - 0으로 나눗셈을 할 시 infinity 반환을 통해 확인할 수 있도록 하였습니다.
 
