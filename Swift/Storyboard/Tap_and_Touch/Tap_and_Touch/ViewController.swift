//
//  ViewController.swift
//  Tap_and_Touch
//
//  Created by GSM02 on 2021/08/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtMessage: UILabel!
    @IBOutlet weak var txtTap: UILabel!
    @IBOutlet weak var txtTouch: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
// 터치가 시작될 때 호출
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch // 발생한 터치 이벤트를 가져옴
        
        txtMessage.text = "터치 시작" // 터치가 시작됨을 알려줌
        txtTap.text = String(touch.tapCount) // touches 세트 안에 포함된 터치의 개수 출력
        txtTouch.text = String(touches.count) // 터치 객체들 중 첫번째 객체에서 탭의 개수 가져옴
    }
    
// 터치된 손가락이 움직였을 때 호출
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch

        txtMessage.text = "움직임" // 터치된 손가락이 움직임을 알려줌
        txtTap.text = String(touch.tapCount)
        txtTouch.text = String(touches.count)
    }

// 터치가 끝났을 때 호출
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch

        txtMessage.text = "터치 끝" // 터치가 끝났음을 알려줌
        txtTap.text = String(touch.tapCount)
        txtTouch.text = String(touches.count)
    }

}

