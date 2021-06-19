//Any, AnyObject, nil
import Swift

/*
 Any : 모든 타입을 지칭하는 키워드
 AnyObject : 모든 클래스 타입을 지칭하는 프로토콜
 nil : '없음'을 의미
 */

//Any
var someAny : Any = 100
someAny = "모든 타입 수용"
someAny = 123.12
//let someDouble = someAny >>> 컴파일 에러


//AnyObject
class SomeClass{}
var someAnyObject : AnyObject = SomeClass()
//someAnyObject = 123.12 >>> 컴파일 에러


//nil
var someAny1 : Any
var someAnyObject1 : AnyObject

//someAny1 = nil >>> 컴파일 에러
//someAnyObject1 = nil >>> 컴파일 에러
