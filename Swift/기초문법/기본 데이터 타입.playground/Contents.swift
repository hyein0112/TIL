//기본 데이터 타입
import Swift


/* Bool
True와 False 값 */

var someBool : Bool = false
someBool = true
//someBool = 0  >>> 컴파일 에러


/* Int, UInt
정수 타입
UInt는 양의 정수만 값으로 가진다. */

var someInt : Int = -100
var someUInt : UInt = 100
//someUInt = -100 >>> 컴파일 에러


/* Float, Double
 실수 타입
 Float > 32bit
 Double > 64bit */

var someFloat = 3.14
someFloat = 3

var someDouble = 3.14
someDouble = 3
//someDouble = someFloat >>> 컴파일 에러


/* Character
 문자 타입
 유니코드 사용 */

var someCharacter : Character = "🦄"
someCharacter = "A"
//someCharacter = "백혜인" >>> 컴파일 에러


/* String
 문자열 타입
 유니코드 사용 */

var someString : String = "Hyein"
someString = someString + " Baek"
//someString = someCharacter >>> 컴파일 에러



