//변수와 상수

var grade : Int = 1 //변수 선언 >> var
var name : String = "Hyein Baek"
let school : String = "GSM" //상수 선언 >> let

/*
 타입생략
 var grade = 1
 var name = "Hyein Baek"
 
 
 나중에 값 할당
 var grade : Int
 var name : String
 
 grade = 1
 name = "Hyein Baek"
 */


print("안녕하세요 \(name)입니다. 저는 \(school) \(grade)학년입니다.") //안녕하세요 Hyein Baek입니다. 저는 GSM 1학년입니다.

grade = 2
name = "백혜인"
// school = "Harvard" >> 컴파일 에러

print("안녕하세요 \(name)입니다. 저는 \(school) \(grade)학년입니다.") //안녕하세요 백혜인입니다. 저는 GSM 2학년입니다.






