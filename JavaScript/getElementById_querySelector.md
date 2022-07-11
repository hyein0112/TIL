# getElementById와 querySelector 

`getElementById`와 `querySelector`는 엘리먼트를 반환하는 메서드이다.   
하지만 각각 사용방법, 반환 객체, 성능 등에서 차이가 난다.  
그래서 각각의 차이를 알고 상황에 맞게 사용하는 것이 중요하다.  

## getElementById
```js
element = document.getElementById(id);
```
- id명과 일치하는 엘리먼트 객체를 반환한다.  
- 일치하는 엘리먼트가 없을 경우 null을 반환한다. 

## querySelector  
```js
element = document.querySelector(selectors);
```  
- 선택자와 일치하는 첫 번째 엘리먼트 객체를 반환한다. 
- 일치하는 엘리먼트가 없을 경우 null을 반환한다. 

## 차이점 
대체로 `querySelector`는 `getElementById`에 비해 연산이 느리고, 복잡하며 브라우저의 지원 범위가 좁다.  
그러나 생산성과 편의성 측면에서는 큰 장점을 가지고 있다.   
`id`만 사용하는 `getElementById`와는 다르게 `id`, `class` 등 다양한 선택자를 사용하여 더욱 구체적인 엘리먼트를 선택할 수 있기 때문이다.


