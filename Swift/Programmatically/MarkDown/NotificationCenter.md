# Notification Center
> 개발 중에 키보드를 활용 할 때 뷰를 올려야 하는 상황이 생겼다ㅜㅜ   
이때 notificationCenter를 사용했는데, 이해하기가 어려워서 다음에 사용할때에는 절대 잊어버리지 않도록 TIL을 작성한다..!   

## NotificationCenter란?
NotificationCenter에 등록된 event가 발생하면 해당 event에 대한 행동을 취한다.   
앱 내에서 메세지를 던지면 아무데서나 이 메세지를 받을 수 있도록 한다.   
보통 백그라운드 작업의 결과, 비동기 작업의 결과 등 현재 작업의 흐름과 다른 흐름의 작업으로 부터 이벤트를 받을 때 사용한다.

## Notification              
NotificationCenter를 통해 정보를 저장하기 위한 구조체이다.   

```swift
var name: Notification.Name // 알림을 식별하는 태그
var object: Any? // 발송자가 observer에게 보내려고 하는 객체. 주로 발송자 객체를 전달하는 데 쓰인다
var userInfo: [AnyHashable : Any]? // Notification과 관련된 값 또는 객체의 저장소
```

## NotificationCenter란?
등록된 옵저버에게 동시에 `notification`을 전달하는 클래스이다.
`NotificationCenter` 클래스는 노티피케이션을 발송하면 노티피케이션 센터에서 메시지를 전달한 옵저버가 처리할 때까지 대기한다.   
즉, 흐름이 동기적으로 흘러간다.   

`.post`를 사용해 노티피케이션을 발송할 수 있다.
```swift
 NotificationCenter.default.post(name: NSNotification.Name("TestNotification"), object: nil, userInfo: nil)​
 ```   
 `.post`는 `Name`의 해당자들에게 일을 수행하라고 시킨다.  

옵저버를 등록하는 법은 아래 코드와 같다.

 ```swift
 NotificationCenter.default.addObserver(self, selector: #selector(didRecieveTestNotification(_:)), name: NSNotification.Name("TestNotification"), object: nil)

 @objc
 func didRecieveTestNotification(_ notification: Notification) {
         print("Test Notification")
 }
 ```   

`addObserver`: 관찰자를 대기시킴  
`selector`: 관찰자가 수행해야 할 업무  

[Reference](https://silver-g-0114.tistory.com/106)
