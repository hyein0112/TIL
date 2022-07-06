# BEM

BEM은 CSS 방법론 중 하나로 Block Element Modifier의 약자이다.

## Block
기능적으로 독립되어 재사용이 가능한 페이지 컴포넌트를 뜻한다.
block의 이름은 상태가 아닌 목적을 나타내야 한다.  
```html
<div class="menu"></div>
<!-- menu block -->
```

## Element
block 내 하위 요소들을 뜻한다.  
두개의 언더스코어 `__`를 사용한다.  
```html
<div class="menu">
<!-- menu block -->
  <div class="menu__logo"></div>
  <!-- menu__logo element -->
  <div class="menu__title"></div>
  <!-- menu__title element -->
</div>
```
## Modifier
block이나 element의 속성을 담당한다.  
두개의 하이픈 `--`을 사용한다.
```html
<div class="menu">
<!-- menu block -->
  <div class="menu--focused"></div>
  <!-- menu--focused modifier -->
</div>
```