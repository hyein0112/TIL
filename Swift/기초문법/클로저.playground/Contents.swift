/* 클로저 */
import Swift


//정의
/*
 { (매개변수 목록) -> 반환타입 in
    실행 코드
 }
 */


//함수 사용
func sumFunction(a: Int, b: Int) -> Int {
    return a + b
}
var sumResult: Int = sumFunction(a: 1, b: 2)
print(sumResult) //3


//클로저 사용
var sum: (Int, Int) -> Int = {(a: Int, b: Int) -> Int in
    return a + b
}
sumResult = sum(2,3)
print(sumResult) //5


//함수는 클로저의 일종으로 sum변수에 함수를 할당할 수 있음
sum = sumFunction(a:b:)
sumResult = sum(3,4)
print(sumResult) //7
