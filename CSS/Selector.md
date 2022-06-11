# 선택자 (Selector)
선택자에는 기본 선택자와 복합 선택자가 존재한다.

## 기본선택자

**1. 전체 선택자 (Universal Selector)**  
`*`를 사용하며 모든 HTML 요소를 선택한다. 
```css
* {
  color: blue;
}
/* 모든 요소의 색을 파란색으로 만든다. */
```

**2. 태그 선택자 (Type Selector)**  
`h1`, `p`, `div`, `span` 등 HTML 요소(Element)를 선택하는 선택자이다.   

```css
p {
  color: blue;
}
/* 모든 `p`요소의 색을 파란색으로 만든다. */
```

 **3. 클래스 선택자 (Class Selector)**  
`.`을 사용하며 주어진 값을 클래스 속성의 값으로 가진 요소를 선택한다.
```css
.ABC {
  color: blue;
}
/* class 속성의 값이 ABC인 요소의 색을 파란색으로 만든다. */
```

**4. 아이디 선택자 (ID Selector)**  
`#`을 사용하여 주어진 값을 아이디 속성의 값으로 가진 요소를 선택한다. 
```css
#ABC {
  color: blue;
}
/* id 속성의 값이 ABC인 요소의 색을 파란색으로 만든다. */
```

## 복합 선택자
**1. 일치 선택자 (Basic Combinator)**  
두 가지 조건을 동시에 만족하는 요소를 선택한다.
```css
span.ABC {
  color: blue;
}
/* span태그의 ABC 클래스 색을 파란색으로 만든다. */
``` 

**2. 자식 선택자 (Child Combinator)**  
`>`를 사용하여 자식 요소를 선택한다. 
```css
ul>.ABC {
  color: blue;
}
/* ul태그의 자식요소 중 class 속성의 값이 ABC인 요소의 색을 파란색으로 만든다. */
```

**3. 하위 선택자 (Descendant Combinator)**  
띄어쓰기를 사용하여 하위 요소를 선택한다.
```css
div .ABC {
  color: blue;
}
/* div태그의 하위 요소 중 class 속성의 값이 ABC인 요소의 색을 파란색으로 만든다. */
```

**4. 인접 형제 선택자 (Adjacent Sibling Combinator)**  
`+`를 사용하여 주어진 요소의 다음 형제 요소를 선택한다.

예를 들어 아래와 같은 코드가 있다.
```html
<ul>
    <li>토마토</li>
    <li>사과</li>
    <li class="orange">오렌지</li>
    <li>복숭아<li>
    <li>포도</li>
</ul>
```

이때 다음은 orange클래스의 다음 형제요소인 복숭아를 선택하게 된다. 
```css
.orange+li {
  color: blue;
}
/* 복숭아의 색을 파랗게 만든다. */
```

**5. 일반 형제 선택자 (General Sibling Combinator)**  
`~`를 사용하여 주어진 요소의 다음 형제 요소를 모두 선택한다.

예를 들어 아래와 같은 코드가 있다.
```html
<ul>
    <li>토마토</li>
    <li>사과</li>
    <li class="orange">오렌지</li>
    <li>복숭아<li>
    <li>포도</li>
</ul>
```

이때 다음은 orange클래스의 다음 형제요소인 복숭아와 포도를 선택하게 된다. 
```css
.orange~li {
  color: blue;
}
/* 복숭아와 포도의 색을 파랗게 만든다. */
```