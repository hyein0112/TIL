//구조체
import Swift


//문법

struct Sample {
    // 가변 프로퍼티
    var mutableProperty: Int = 100
    // 불변 프로퍼티
    let immutableProperty: Int = 100
    // 타입 프로퍼티
    static var typeProperty: Int = 100
    
    // 인스턴스 메서드
    func instanceMethod() {
        print("instance method")
    }
    
    // 타입 메서드
    static func typeMethod() {
       print("type method")
    }
}


//사용하기

var mutable: Sample = Sample()
mutable.mutableProperty = 200
//mutable.immutableProperty = 200 >>> 컴파일 오류

let immutable: Sample = Sample()
//immutable.mutableProperty = 200 >>> 컴파일 오류
//immutable.immutableProperty = 200 >>> 컴파일 오류

// 타입 프로퍼티 및 메서드
Sample.typeProperty = 300
Sample.typeMethod() // type method

// 인스턴스에서는 타입 프로퍼티나 타입 메서드를 사용할 수 없다.
//mutable.typeProperty = 400 >>> 컴파일 오류
//mutable.typeMethod() >>> 컴파일 오류


//Student 구조체

struct Student {
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    static func selfIntroduce() {
        print("학생타입입니다")
    }
    
    // 인스턴스 메서드
    // self는 인스턴스 자신을 지칭한다
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
    }
}

Student.selfIntroduce() // 학생타입입니다

// 가변 인스턴스 생성
var hyein: Student = Student()
hyein.name = "hyein"
hyein.class = "스위프트"
hyein.selfIntroduce()   // 저는 스위프트반 hyein입니다

// 불변 인스턴스 생성
let bona: Student = Student()

//bona.name = "jina" >>> 컴파일 에러
bona.selfIntroduce() // 저는 Swift반 unknown입니다
