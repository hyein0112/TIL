//옵셔널 값 추출
import Swift


// 옵셔널 바인딩
// if - let 사용

func printName(_ name: String) {
    print(name)
}

var myName: String? = "hyein"
//printName(myName) >>> 전달되는 값의 타입이 다르기 때문에 컴파일 에러

if let name: String = myName {
    printName(name)
} else {
    print("myName == nil")
} //hyein

var yourName: String! = nil

if let name: String = yourName {
    printName(name)
} else {
    print("yourName == nil")
} //yourName == nil


// ,를 이용한 모든 값 추출
// 모든 옵셔널의 값이 있을 떄만 동작
myName = "hyein"
yourName = nil

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
} // yourName이 nil이기 때문에 실행 X

yourName = "eunseo"

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
} // hyein and eunseo


//옵셔널 체이닝
//?로 옵셔널 바인딩 과정을 줄인다

class Person {
    var name: String
    var job: String?
    var home: Apartment?
    
    init(name: String) {
        self.name = name
    }
}

class Apartment {
    var buildingNumber: String
    var roomNumber: String
    var `guard`: Person?
    var owner: Person?
    
    init(dong: String, ho: String) {
        buildingNumber = dong
        roomNumber = ho
    }
}

let hyein: Person? = Person(name: "hyein")
let apart: Apartment? = Apartment(dong: "112", ho: "527")
let superman: Person? = Person(name: "superman")


func guardJobWithOptionalChaining(owner: Person?) {
    if let guardJob = owner?.home?.guard?.job {
        print("우리집 경비원의 직업은 \(guardJob)입니다")
    } else {
        print("우리집 경비원은 직업이 없어요")
    }
}

guardJobWithOptionalChaining(owner: hyein)
// 우리집 경비원은 직업이 없어요


// 강제 추출
// 값을 확인 하지 않고 강제로 추출, 값이 없을 때 런타임 오류

var MyName: String? = "hyein"
var YourName: String! = nil

printName(MyName!) //hyein
MyName = nil

//print(MyName!) >>> 런타임 에러

//print(YourName) >>> 런타임 에러
