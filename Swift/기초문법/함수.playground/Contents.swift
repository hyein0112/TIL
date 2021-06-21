//함수
import Swift

//함수 선언

// func 함수이름(매개변수1 이름: 매개변수1 타입, 매개변수2 이름 : 매개변수2 타입 ... ) -> 반환 타입{
//
//}
// return값이 없을 경우에는 반환타입에 void를 쓰거나 생략한다.


func sum(a : Int, b : Int) -> Int{
    return a+b
}

func hello(){
    print("Hello")
}

//함수 호출
print(sum(a: 2, b: 3)) //5
hello() //Hello


/*---------------------------------------------------------------------*/


//매개변수 기본값
//매개변수가 들어오지 않았을 때, 기본적으로 전달되는 값을 설정. 기본값을 갖는 매개변수는 매개변수 목록 중 뒤쪽에 위치시키는 것이 좋음
func greeting(friend: String, me: String = "hyein"){
    print("Hello \(friend)! I'm \(me)")
}

greeting(friend: "eunseo") // Hello eunseo! I'm hyein
greeting(friend: "tom", me: "jerry") // Hello tom! I'm jerry


//전달인자 레이블 (Argument Label)
//함수를 호출할 때 함수 사용자의 입장에서 매개변수의 역할을 좀 더 명확하게 표현하고 싶을 때 사용. 전달인자 레이블이 다른 동일한 이름의 함수 생성 가능.
func greeting(to friend: String, from me: String){
    print("Hello \(friend)! I'm \(me)")
}

greeting(to: "tom", from: "jerry") // Hello tom! I'm jerry


//가변 매개변수
//전달 받을 값의 개수를 알기 어려울 때 사용. 함수당 하나만 가질 수 있고 기본값이 있는 함수처럼 매개변수 목록 중 뒤에 위치시키는 것이 좋음
func sayHelloToFriends(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)"
}

print(sayHelloToFriends(me: "hyein", friends: "eunseo", "tom", "jerry"))
// Hello ["eunseo", "tom", "jerry"]! I'm hyein

print(sayHelloToFriends(me: "hyein"))
// Hello []! I'm hyein


//스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어이다. 따라서 스위프트의 함수는 일급 객체. 함수를 변수, 상수 등에 할당 가능하며 매개변수를 통해 전달할 수도 있다.
var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("eunseo", "hyein") // Hello eunseo! I'm hyein

someFunction = greeting(friend:me:)
someFunction("bona", "hyein") // Hello bona! I'm hyein

// 타입이 다른 함수는 할당 할 수 없다.
//someFunction = sayHelloToFriends(me : friend) >>> 컴파일 에러

func runAnother(function: (String, String) -> Void) {
    function("tom", "jerry")
}

runAnother(function: greeting(friend:me:)) // Hello tom! I'm jerry
runAnother(function: someFunction) // Hello tom! I'm jerry
