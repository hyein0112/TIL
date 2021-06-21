//반복문
import Swift


//for-in

var integers = [1, 2, 3]
let people = ["hyein": 1, "eunseo": 3, "bona": 5]

for integer in integers {
    print(integer)
}


for (name, age) in people {
    print("\(name): \(age)")
}


//while

while integers.count > 1 {
    integers.removeLast()
}


//repeat-while
//do-while과 유사

repeat {
    integers.removeLast()
} while integers.count > 0
