# 넘침 제어 (overflow)

## overflow란?
요소 내의 컨텐츠가 크기보다 커져 요소 내에 모두 보여주기 힘들때 어떻게 보여줄지 지정하는 CSS 속성이다. 

## 종류 
overflow 에 사용할 수 있는 값은 네가지가 있다.
 
- **visible** : 기본 값으로 넘치는 내용을 그대로 보여준다.
- **hidden** : 넘치는 부분을 잘라내어 보이지 않게 한다.
- **scroll** : 스크롤바가 추가되어 스크롤이 가능하다.(가로, 세로 모두 추가)
- **auto** : 넘치는 내용이 있는 경우에만 스크롤바를 추가한다. 

## overflow-x, overflow-y
가로, 세로 overflow 를 각각 제어하고자 할 때 `overflow-x`와 `overflow-y`를 사용한다.

