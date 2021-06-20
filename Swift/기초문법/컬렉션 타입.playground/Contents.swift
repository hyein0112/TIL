//컬렉션 타입
import Swift

/*
 Array : 순서가 있는 리스트 컬렉션
 Dictionary : key와 value의 쌍으로 이루어진 컬렉션
 Set : 순서가 없고, 멤버가 유일한 컬렉션
 */


// Array
var integers : Array<Int> = Array()
//var integers = [Int]()

//인덱스 추가
integers.append(1)
integers.append(100)
//integers.append(10.1) >>> 컴파일 에러

//인덱스 포함 여부 확인
integers.contains(1) //true
integers.contains(99) //false

//인덱스 삭제
integers.remove(at: 0) //0번째 인덱스 삭제
integers.removeLast() //마지막 인덱스 삭제
integers.removeAll() //전체 인덱스 삭제

integers.count //인덱스의 개수


// Dictionary
var anyDictionary : Dictionary<String,Any> = [String :Any]()
//var anyDictionary = [String : Any]()

//키에 해당하는 값 할당
anyDictionary["someKey"] = "someValue"
anyDictionary["anotherKey"] = 100

//키에 해당하는 값 변경
anyDictionary["someKey"] = "dictionary"

//키에 해당하는 값 제거
anyDictionary.removeValue(forKey:"anotherKey")
anyDictionary["someKey"] = nil


// Set
var integerSet : Set<Int> = Set<Int>()

integerSet.insert(1)
integerSet.insert(2)
integerSet.insert(99)
integerSet.insert(3)
integerSet.insert(99) // 중복 값 반영 x

integerSet.contains(1) //true
integerSet.contains(100) //false

integerSet.remove(1) // {2, 3, 99}

integerSet.count // 2

//집합 연산
let setA : Set<Int> = [1, 2, 3, 4, 5]
let setB : Set<Int> = [3, 4, 5, 6, 7]

// 합집합
let union : Set<Int> = setA.union(setB)

// 오름차순 정렬
let orderedUnion : [Int] = union.sorted()

// 교집합
let intersection : Set<Int> = setA.intersection(setB)

// 차집합
let subtracting : Set<Int> = setA.subtracting(setB)
