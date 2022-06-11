# 선택자 우선순위 (Selector Priority)
1. !important: 속성 값 뒤에 !important를 붙인 것
2.	inline style: html내에서 style을 지정한 것
3.	id Selector: id로 지정된 것
4.	class Selector: class로 지정된 것
5.	tag Selector: 태그 이름으로 지정된 것
6.	universal Selector:	asterisk(*)로 요소 전체를 지정한 것

- **!import:**	우선순위 1위
- **id 선택자 vs class 선택자**:	id 선택자 우선
- **class 선택자 vs 요소 선택자**:	class 선택자 우선
- **요소 선택자 vs 전체 선택자**: 요소 선택자 우선
- **class 선택자 vs 특정 요소의 class 선택자**:	특정 태그의 class 우선  
ex) .title vs h1.title: h1.title가 더 구체적
- **같은 class 선택자에 대한 css**: 순서상 나중이 우선
- **같은 요소 선택자에 대한 css**: 순서상 나중이 우선
 

 