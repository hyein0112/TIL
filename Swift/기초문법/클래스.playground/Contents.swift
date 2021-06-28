//클래스
import Swift


//문법

class Sample {
    var mutableProperty: Int = 100
    let immutableProperty: Int = 100
    static var typeProperty: Int = 100
    
    //인스턴스 메서드
    func instanceMethod() {
        print("instance method")
    }
    //타입 메서드
    //재정의 불가능
    static func typeMethod() {
        print("type method - static")
    }
    //재정의 가능
    class func classMethod() {
        print("type method - class")
    }
}


//사용하기

var mutableReference: Sample = Sample()
mutableReference.mutableProperty = 200
//mutableReference.immutableProperty = 200 >>> 컴파일 오류

let immutableReference: Sample = Sample()
immutableReference.mutableProperty = 200
//immutableReference.immutableProperty = 200 >>> 컴파일 오류

// 타입 프로퍼티 및 메서드
Sample.typeProperty = 300
Sample.typeMethod() // type method - static

// 인스턴스에서는 타입 프로퍼티나 타입 메서드를 사용할 수 없다.
//mutableReference.typeProperty = 400 >>> 컴파일 오류
//mutableReference.typeMethod() >>> 컴파일 오류


//Student 클래스

class Student {
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    class func selfIntroduce() {
        print("학생타입입니다")
    }
    
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
    }
}

Student.selfIntroduce() // 학생타입입니다

var hyein: Student = Student()
hyein.name = "hyein"
hyein.class = "스위프트"
hyein.selfIntroduce() // 저는 스위프트반 hyein입니다

let bona: Student = Student()
bona.name = "bona"
bona.selfIntroduce() // 저는 Swift반 bona입니다
