//
//  ViewController.swift
//  Timer
//
//  Created by GSM02 on 2021/07/24.
//

import UIKit

class ViewController: UIViewController {

    let timeSelector: Selector = #selector(ViewController.updateTime)
        let interval = 1.0 // 타이머 간격 값
        var count = 0

    @IBOutlet weak var showTime: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @objc func updateTime(){
        
        count += 1
        showTime.text = String(count)
        
        // 10초 마다 Time 색상 변경
        if count % 10 == 0{
            showTime.textColor = .red
        }else{
            showTime.textColor = .black
        }
    }
    
    @IBAction func tapStartButton(_ sender: Any) {
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
              // timeInterval - 간격, target - 동작될 view, selector - 타이머가 구동될 때 실행 될 함수, userInfo - 사용자 정보, repeats - 반복여부
    }
    

}

