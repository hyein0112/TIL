# async / await 

async / await은 ES8에 해당하는 문법으로 Promise를 더욱 쉽게 사용할 수 있도록 도와준다. 

사용법을 알아보자.
```js
function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms))
}

async function process() {
  console.log('안녕하세요')
  await sleep(1000)
  console.log('반갑습니다.')
}

process()
``` 

```
실행결과

'안녕하세요' 
// 1초 쉬고
'반갑습니다.'
```

`async`는 함수 앞에 키워드를 붙여 사용한다. 이 때 함수 내부는 전부 비동기로 바뀌게 된다.   
`await`은 `async` 내부에서만 사용할 수 있으며, 해당 프로미스가 끝날 때 까지 기다렸다가 다음 작업을 수행한다.  

함수에서 `async`를 사용하면 해당 함수는 `Promise`를 반환한다.   
따라서 `then` 또한 사용할 수 있다.
```js
process().then(() => console.log('작업이 끝났어요'))
```  

`async` 함수에서 에러를 발생시킬 때에는 `throw`를 사용하고, `try/catch` 문을 사용해 에러를 잡는다. 
```js
function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms))
}

async function makeError() {
  await sleep(1000)
  const error = new Error()
  throw error
}

async function process() {
  try {
    await makeError()
  } catch (e) {
    console.error(e)
  }
}

process();
```
