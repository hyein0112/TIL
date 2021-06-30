//열거형
import Swift


//열거형 문법
/*
enum 이름{
    case 이름1
    case 이름2
    case 이름3, 이름4, 이름5 ...
 */

//타입이 명확할 경우 열거형 이름 생략 가능
enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

// 열거형 타입과 케이스를 모두 사용하여도 됨
var day: Weekday = Weekday.mon
// 타입이 명확하다면 .케이스 처럼 표현해도 무방
day = .tue

// switch에서 사용할 때 모든 케이스를 포함하면 default 생략 가능
switch day {
case .mon, .tue, .wed, .thu, .fri:
    print("평일")
case .sat, .sun:
    print("주말")
}

//원시값
enum Friut: Int {
    case apple = 0
    case grape = 1
    case peach
}
// peach의 값을 정의하지 않아도 자동으로 2라는 값을 가지게 된다.
print(Friut.peach.rawValue) //2


// 정수 타입 뿐만 아니라, Hashable 프로토콜을 따르는 모든 타입을 원시값의 타입으로 지정할 수 있다.
enum School: String {
    case elementary = "초등"
    case middle = "중등"
    case high = "고등"
    case university
}

print(School.middle.rawValue) // 중등

//원시값이 정의되지 않을 경우 case의 이름을 원시값으로 사용
print(School.university.rawValue) // univerisity


//rawValue를 통한 초기화
//rawValue가 case에 해당하지 않을 수 있으므로 rawValue를 통해 초기화 한 인스턴스는 옵셔널 타입이다.
let apple: Friut? = Friut(rawValue: 0)

// if let 구문을 사용하면 rawValue에 해당하는 케이스를 곧바로 사용 가능
if let orange: Friut = Friut(rawValue: 5) {
    print("rawValue 5에 해당하는 케이스는 \(orange)입니다")
} else {
    print("rawValue 5에 해당하는 케이스가 없습니다")
} // rawValue 5에 해당하는 케이스가 없습니다


//메서드도 추가할 수 있다.
enum Month {
    case dec, jan, feb
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov
    
    func printMessage() {
        switch self {
        case .mar, .apr, .may:
            print("봄")
        case .jun, .jul, .aug:
            print("여름")
        case .sep, .oct, .nov:
            print("가을")
        case .dec, .jan, .feb:
            print("겨울")
        }
    }
}
Month.jun.printMessage() // 여름
