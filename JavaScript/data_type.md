# 자료형
## String
따옴표로 감싸 선언하며 큰따옴표, 작은따옴표를 가리지 않는다.  
백틱으로 작성한 문자열 데이터의 경우 문자열 보간이 가능하다.
```js
let myName="HYEIN";
let email = 'hyein_0112@naver.com';

let hello = `hello ${myName} !!` 
console.log(hello); // hello HYEIN !!
```

## Number
정수 및 부동소수점 숫자를 나타낸다.  
```js
let number = 123;
let opacity = 1.57;

console.log(number, opacity); // 123 1.57
```

## Boolean
`true`나 `false`값을 나타낸다.
```js
let isShow = false;
let checked = true;

console.log(isShow) // false
console.log(checked) // true
```

## Undefined
값이 할당되지 않은 상태를 나타낸다.
```js
let undef;
let obj = { abc: 123} ;

console.log(undef); // undefined
console.log(obj.abc); // 123
console.log(obj.xyz); // undefined
```

## Null
비어있는 값을 의미한다.  
명시적으로 지정해 준다는 점에서 `undefined`과 차이가 있다.
```js
let empty = null;

console.log(empty); // null
```

## Object (객체 데이터)
여러 데이터를 key: value 형태로 저장한다. 
```js
let user = {
  name: 'hyein',
  email: 'hyein_0112@naver.com'
};

console.log(user.name); // hyein
console.log(user.email); // hyein_0112@naver.com
```

## Array (배열 데이터)
여러 데이터를 순차적으로 저장한다.  
```js
let fruits = ['apple', 'banana', 'cherry'];

console.log(fruits[0]); // apple
console.log(fruits[1]); // banana
console.log(fruits[2]); // cherry
```

