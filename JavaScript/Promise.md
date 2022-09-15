# Promise

## Promise 란?
`Promise`는 비동기 작업을 더욱 편하게 처리할 수 있도록 ES6에 도입된 문법이다.   
이 전에는 비동기 작업을 위해 `callback`함수를 사용했어야 했는데, 이 경우 작업이 많아지면 코드가 굉장히 난잡해지게 된다.   
이러한 경우를 콜백지옥 이라고 부른다.  

## Promise 만들기   
콜백지옥 현상을 방지하기 위해 `Promise`를 사용해보자.   

`Promise`는 다음과 같이 선언한다.
```js
const myPromise = new Promise((resolve, reject) => {
  // 구현...
})
```  
`Promise`는 성공 할 수도, 실패 할 수도 있다.  
성공시에는 `resolve`를 호출해주고, 실패시에는 `reject`를 호출한다.  

먼저 1초 뒤에 성공시키는 상황을 구현해보자
```js
const myPromise = new Promise((resolve, reject) => {
  setTimeout(() => {
    resolve('result')
  }, 1000)
})

myPromise.then(n => {
  console.log(n)
})
```

`resolve`를 호출 할 때 특정한 값을 파라미터로 넣어주게 되면, 작업이 끝난 뒤 사용할 수 있다.   
이 때 또 다른 작업을 위해 `Promise`뒤에 `.then(...)`를 붙여 사용한다.   

이번에는 1초뒤에 실패되는 상황을 구현해보자 
```js
const myPromise = new Promise((resolve, reject) => {
  setTimeout(() => {
    reject(new Error())
  }, 1000)
})

myPromise
  .then(n => {
  console.log(n)
})
  .catch(e => {
    console.log(e)
  })
```   
실패하는 상황에서는 `reject`를 사용하고, `.catch`를 통해 실패시 수행할 작업을 설정할 수 있다.   

수를 더해 1초에 한번씩 출력하고, 만일 수가 5일 경우 실패하게 되는 함수를 작성해보자.
```js
function increaseAndPrint(n) {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      const value = n+1
      if(value === 5) {
        const error = new Error()
        error.name = 'ValueIsFiveError'
        reject(error)
        return;
      }
      console.log(value)
      resolve(value)
    }, 1000)
  })
}

increaseAndPrint(0)
  .then(n => {
   return increaseAndPrint(n)
  })
  .then(n => {
   return increaseAndPrint(n)
  })
  .then(n => {
   return increaseAndPrint(n)
  })
  .then(n => {
   return increaseAndPrint(n)
  })
  .then(n => {
   return increaseAndPrint(n)
  })
  .catch(e => {
    console.error(e)
  })
```   
`Promise`의 속성 중 `then`내부의 함수에서 또다시 `Promise`를 리턴하게 되면 연달아 사용할 수 있다.  

또한 위 코드는 다음과 같이 정리 할 수 있다.
```js
function increaseAndPrint(n) {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      const value = n+1
      if(value === 5) {
        const error = new Error()
        error.name = 'ValueIsFiveError'
        reject(error)
        return;
      }
      console.log(value)
      resolve(value)
    }, 1000)
  })
}

increaseAndPrint(0)
  .then(increaseAndPrint)
  .then(increaseAndPrint)
  .then(increaseAndPrint)
  .then(increaseAndPrint)
  .then(increaseAndPrint)
  .catch(e => {
    console.error(e)
  })
```   

> 이처럼 Promise를 사용하면 비동기 작업의 개수가 많아져도 코드가 난잡해지지 않는다.   
하지만, 에러를 잡을때 몇번째에서 발생했는지 알아내기 힘들고, 특정 조건에 따라 분기를 나누는 작업도 힘들며, 특정 값을 공유해가며 작업을 처리하기도 까다롭다는 단점이 있다.