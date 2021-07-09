/*값 타입과 참조타입*/
import Swift

/*
class : 참조 타입
struct, enum : 값 타입
 
값 타입: 데이터를 전달 할 때 값을 복사하여 전달
참조 타입 : 데이터를 전달 할 때 값의 메모리 위치를 전달
 */

struct ValueType{
    var property = 1
}
class ReferenceType{
    var property = 1
}

let firstStructInstance = ValueType()
var secondStructInstance = firstStructInstance
secondStructInstance.property = 2

print("first struct instance property : \(firstStructInstance.property)") //1
print("second struct instance property : \(secondStructInstance.property)") //2

let firstClassReference = ReferenceType()
let secondClassReference = firstClassReference
secondClassReference.property = 2

print("first class reference property : \(firstClassReference.property)") //2
print("second class reference property : \(secondStructInstance.property)") //2



