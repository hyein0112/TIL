//옵셔널
//nil일 수도, nil이 아닐 수도 있다.
import Swift


//옵셔널 선언
let optionalValue: Optional<Int> = nil
//let optionalValue: Int? = nil >>> 같은 뜻

// 옵셔널 표현
// !를 이용한 암시적 추출 옵셔널

var implicitlyUnwrappedOptionalValue: Int! = 100

switch implicitlyUnwrappedOptionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
} // Value is 100

//기존 변수처럼 사용 가능
implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1

//nil 할당 가능
implicitlyUnwrappedOptionalValue = nil


// ?를 이용한 암시적 추출 옵셔널

var someOptionalValue: Int? = 100

switch someOptionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
} // Value is 100

//기존 변수처럼 사용불가 - 옵셔널과 일반 값은 다른 타입이므로 연산 불가
//someOptionalValue = someOptionalValue + 1 >>> 에러

//nil 할당 가능
someOptionalValue = nil
