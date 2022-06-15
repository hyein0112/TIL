# flexbox 
flexbox는 보다 쉽게 레이아웃 구조를 잡을 수 있는 css 속성으로 요소의 크기가 정확하지 않거나, 반응형일 때 유용하게 사용할 수 있다.

## flexbox의 구성
![](https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbW3fLC%2Fbtq3t32nwwH%2FKPYcK4aDm9yWNuPfEAWLCk%2Fimg.png)

flexbox는 상위 부모요소인 flex container와, 자식 요소인 flex item으로 구성되어 있다.  
또한 flex container와 flex item에 정의하는 속성이 다르다.

## flex container(부모요소)

### flex-direction
플렉스 컨테이너 내의 아이템을 배치할 때 주축 및 방향을 지정한다.
- row (기본값)
- row-reverse
- column
- column-reverse

### flex-wrap
flex-item의 요소를 한줄로 배치할 것인지, 여러줄에 배치할 것인지 결정한다.
- nowrap (기본값)
- wrap 
- wrap-reverse 

### flex-flow
flex-direction과 flex-wrap을 합쳐놓은 것이다.

### justify-content
중심축에서 아이템을 어떻게 배치할지 결정한다.
- flex-start (기본값)
- flex-end
- center 
- space-between
- space-around 

### align-items
교차축에서 아이템이 한 줄일 때 정렬을 결정한다.
- flex-start
- flex-end
- center
- baseline
- stretch (기본값)

### align-content
교차축에서 아이템이 여러 줄일 때 정렬을 결정한다.
- flex-start 
- flex-end 
- center 
- space-between
- space-around 
- stretch (기본값)


## flex item(자식요소)

### align-self
개별 요소의 정렬을 결정한다. 
- flex-start
- flex-end
- center
- baseline
- stretch (기본값)

### flex-basis
item의 초기 크기를 지정한다.

### flex-grow
tem의 기본 너비를 늘어나게 하여 적절한 너비로 배치되도록 한다.

### flex-shrink
item의 기본 너비를 줄어들게 하여 적절한 너비로 배치되도록 한다.

### order
flex 요소의 순서를 지정한다. 

