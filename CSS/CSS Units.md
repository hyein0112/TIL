# CSS 단위 (CSS Units)

## 단위 종류
### 절대 길이 단위
- px

### 상대 길이 단위
- %
- em
- rem
- vw
- vh


## px
픽셀, 즉 화면을 구성하는 가장 기본이 되는 단위이다.  
ex) `10px`로 크기를 지정했다면 브라우저의 크기가 어떻게 바뀌더라도 `10px`이라는 크기를 유지한다.

## % 
백분율 단위로 부모요소에 상대적으로 사이즈가 계산된다.  
ex) `50%`로 크기를 지정할 경우 부모 요소의 `50%`를 차지한다.

## em
요소에 지정된 글꼴 크기를 나타내는 단위이다.  
```html
<div class="parent">
  Parent
  <div class="child">Child</div>
</div>
```
```css
.parent {
    font-size : 10px;
}
.child {
    font-size : 5em;
}
```

`5em -> 10px * 5 = 50px`  
`parent`의 폰트 사이즈를 `10px`로 지정했을 때, `child`는 부모요소인 `parent`의 5배를 폰트 사이즈로 갖는다.  

## rem
루트에 지정된 글꼴 크기를 나타내는 단위이다.
```html
<div>hyein</div>
```
```css
div {
  font-size: 5rem;
}
```
HTML에서 기본적으로 주어진 폰트 사이즈는 16px이다.   
`5rem -> 16px * 5 = 80px`

## vw
Viewport 넓이의 백분율   
ex) `50vw`로 크기를 지정할 경우 Viewport 넓이의 절반을 차지한다.

## vh 
Viewport 높이의 백분율  
ex) `50vh`로 크기를 지정할 경우 Viewport 높이의 절반을 차지한다.

