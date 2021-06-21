//조건문
import Swift


//if문

let Integer = 100

if Integer < 100 {
    print("100 미만")
}
else if Integer > 100 {
    print("100 초과")
}
else {
    print("100")
} // 100


//switch문

let someInteger = 100

switch(someInteger){
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
}// 100


switch "hyein"{
case "eunseo":
    print("eunseo")
case "hyein":
    print("hyein")
default:
    print("unknown")
}//hyein
