# 옵셔널 (Optional)
Swift가 가지고 있는 가장 큰 특징 중 하나가 바로 옵셔널이다. 옵셔널은 값이 있을 수도, 없을 수도 있는 것을 나타낸다.  

예를 들어 문자열의 값이 있으면 `"가나다"`가 될 것이다. 그럼 값이 없다면 `""`일까? 아니다. `""`도 엄연한 값이 있는 문자열이다. 단지 비어있는 것 뿐이다. 값이 없는 문자열은 바로 `nil`이다.   

정수형에서도 마찬가지이다. `0`은 없는 값이 아니라 `0`이라는 숫자 값이다. 여기서도 없는 값은 `nil`이다.  

마찬가지로 빈 배열이나 빈 딕셔너리라고해서 값이 없는 것이 아니다. 배열과 딕셔너리의 경우에도 없는 값은 `nil`이다.   

이렇게 값이 없는 것을 나타낼 때는 `nil`을 사용한다.  
그렇다고 모든 변수에 `nil`을 넣을 수는 없다. 아래와 같이 `name`이라는 변수에 `nil`을 넣으려 하면 에러가 발생한다.
```swift
var name : String = "백혜인"
name = nil //컴파일 에러
```   

값이 있을 수도, 없을 수도 있는 변수를 정의할 때는 타입 어노테이션에 `?`을 붙여야 한다. 이렇게 정의한 변수를 옵셔널이라고 한다. 옵셔널에 초기값을 지정하지 않으면 초기값은 `nil`이다.

```swift
var name : String?
print(name) //nil

name = "백혜인"
print(name) //Optional("백혜인")
```

옵셔널이 아닌 변수는 항상 값을 가지고 있어야 한다. 그래서 아래와 같은 코드는 사용할 수 없다.
```swift
let optionalName: String? = "hyein"
let requiredName: String = optionalName // 컴파일 에러!
```
`requiredName`변수는 옵셔널이 아닌 `String`이기 때문에 항상 값을 가지고 있어야한다.   
그러나 `optionalName`변수는 옵셔널로 선언한 변수이기 때문에 실제 코드가 실행되기 전까지는 값이 있는지, 없는지 알 수 없다. 그래서 Swift 컴파일러는 안전을 위해 `requiredName`에는 옵셔널로 선언된 변수의 값을 대입할 수 없도록 만들었다.   

옵셔널은 개념적으로 이렇게 표현할 수 있다. 
```
        ,-- 어떤 값 (String, Int, ...)
Optional
        `-- nil
```   

# 옵셔널 바인딩 (Optional Binding)
옵셔널의 값을 가지고 오고 싶을 때 사용하는 것이 바로 옵셔널 바인딩이다.

옵셔널 바인딩은 옵셔널의 값이 존재하는지를 검사한 뒤, 존재한다면 그 값을 다른 변수에 대입시킨다. `if let` 또는 `if var`를 사용하는데. 옵셔널의 값을 벗겨서 값이 있다면 if문 안으로 들어가고, 값이 nil이라면 그냥 통과한다.

예를 들어 아래의 코드에서 `optionalName`에 값이 존재한다면 `name`변수에 실제 값이 저장되고 그 값을 if문 내에서 사용할 수 있다.  
만약 `optionalName`이 nil 이라면 if문이 실행되지 않고 넘어가게 된다.
```swift
if let name = optionalName {
  print(name) // optionalName의 값이 존재한다면 해당 값 출력
}
// optionalName이 nil이라면 if문을 지나침
```

여러 옵셔널을 바인딩 할 때는 콤마 `','`를 사용한다. 모든 옵셔널의 값이 존재해야 if문을 수행한다.
```swift
var optionalName: String? = "백혜인"
var optionalEmail: String? = "bhi12134@gmail.com"

if let name = optionalName, email = optionalEmail {
  // name과 email 값이 존재
}
```
> 코드가 너무 길 경우에는 여러줄에 걸쳐 사용하는 것이 바람직하다.
```swift
if let name = optionalName,
       let email = optionalEmail {
       // name과 email 값이 존재
}
```
> 참고로, 두 번째 let 부터는 생략이 가능하다.

위 코드는 아래와 동일하다.
```swift
if let name = optionalName {
	if let email = optionalEmail {
	// name과 email 값이 존재
	}
}
```
>한 번의 if 문에서 여러 옵셔널을 바인딩할 수 있게 된 것은 Swift 1.2 버전부터이다. 이전 버전까지는 바로 위와 같이 여러 번으로 감싸진 옵셔널 바인딩을 사용했다.   

옵셔널을 바인딩할 때 `,` 를 사용해서 조건도 함께 지정할 수 있다. `,` 이후의 조건절은 옵셔널 바인딩이 일어난 후에 실행된다. 즉, 옵셔널이 벗겨진 값을 가지고 조건을 검사하게 된다.
```swift
var optionalAge: Int? = 22

if let age = optionalAge, age >= 20 {
	// age의 값이 존재하고, 20 이상
}
```
위 코드는 아래와 동일하다.
```swift
if let age = optionalAge {
	if age >= 20 {
		// age의 값이 존재하고, 20 이상
	}
}
```

# 옵셔널 체이닝 (Optional Chaining)
옵셔널 체이닝은 설명보다는 바로 코드를 보는 것이 도움이 된다.   

옵셔널로 선언된 배열을 떠올려 보자. 이 배열이 빈 배열인지를 검사하려면 `nil`이 아니면서 빈 배열인지를 확인해보면 될 것이다.
```swift
let array: [String]? = []
var isEmptyArray = false

if let array = array, array.isEmpty {
  isEmptyArray = true
} else {
  isEmptyArray = false
}

isEmptyArray
```

옵셔널 체이닝을 사용하면 이 코드를 더욱 간결하게 쓸 수 있다.
```swift
let isEmptyArray = array?.isEmpty == true
```
옵셔널 체이닝은 옵셔널의 속성에 접근할 때, 옵셔널 바인딩 과정을 `?` 키워드로 줄여주는 역할을 한다.   
다음과 같이 3가지 경우의 수를 생각해보자.

- `array`가 `nil`인 경우
    ```swift
    array?.isEmpty
    ~~~~~~
    여기까지 실행되고 `nil`을 반환
    ```

- `array`가 빈 배열인 경우
    ```swift
    array?.isEmpty
    ~~~~~~~~~~~~~~
    여기까지 실행되고 `true`를 반환
    ```

- `array`에 요소가 있는 경우
    ```swift
    array?.isEmpty
    ~~~~~~~~~~~~~~
    여기까지 실행되고 `false`를 반환
    ```

`array?.isEmpty`의 결과로 나올 수 있는 값은 `nil`, `true`, `false`가 된다. `isEmpty`의 반환값은 `Bool`인데, 옵셔널 체이닝으로 인해 `Bool?`을 반환하도록 바뀐 것이다.    
따라서 값이 실제로 `true`인지를 확인하려면 `== true`를 해주어야 한다.

# 옵셔널 벗기기
옵셔널을 사용할 때마다 옵셔널 바인딩을 하는 것이 가장 바람직하다. 하지만 개발을 하다보면 분명히 값이 존재할 것임에도 불구하고 옵셔널로 사용해야 하는 경우가 종종 있다. 이럴 때에는 옵셔널에 값이 있다고 가정하고 값에 바로 접근할 수 있도록 도와주는 키워드인 `!`를 붙여 사용한다.
```swift
print(optionalEmail) // Optional("bhi12134@gmail.com")
print(optionalEmail!) // bhi12134@gmail.com
```

`!`를 사용할 때, 옵셔널의 값이 `nil`인 경우에는 런타임 에러가 발생한다. 
```swift
var optionalEmail: String?
print(optionalEmail!) // 런타임 에러!
```
런타임 에러가 발생하면 iOS 앱은 강제로 종료되기 때문에 굉장히 조심해서 사용해야 한다.   

# 암묵적으로 벗져진 옵셔널 (Implicitly Unwrapped Optional)
옵셔널을 정의할 때 `?` 대신 `!`를 붙이면 `ImplicitlyUnwrappedOptional`이라는 옵셔널로 정의된다. 직역하면 '암묵적으로 벗겨진 옵셔널' 이다.

이렇게 정의된 옵셔널은 옵셔널 바인딩이나 옵셔널을 벗기는 과정을 거치지 않고도 값에 바로 접근을 할 수 있다.
```swift
var name: String! = "hyein"
print(name) // hyein
```

하지만 옵셔널 벗기기와 마찬가지로 `nil`일 때 접근을 시도하면 런타임 에러가 발생한다.
```swift
var name: String!
print(name) // 런타임 에러!
```
가급적이면 일반적인 옵셔널을 사용해서 정의하고, 옵셔널 바인딩 또는 옵셔널 체이닝을 통해 값에 접근하는 것이 더 바람직하다.

[*Reference*](https://devxoul.gitbooks.io/ios-with-swift-in-40-hours/content/Chapter-2/optionals.html)

