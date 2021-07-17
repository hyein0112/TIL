//
//  ViewController.swift
//  Up_Down
//
//  Created by GSM02 on 2021/07/17.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var hintLabel: UILabel!
    
    var randNumber = Int.random(in: 1..<101)
    var count : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func checkButton(_ sender: Any) {
        hintMessage()
        inputText.text = ""
    }
    
    func hintMessage(){
        let textInt = Int(inputText.text!)
        
        if inputText.text == ""{
            if hintLabel.text == "\(count) 번 만에 성공"{
                count = 0
                randNumber = Int.random(in: 1..<101)
                hintLabel.text = "게임을 시작하세요"
            }else{
                hintLabel.text = "숫자를 입력하세요"
            }
        }else if  textInt! < randNumber{
            hintLabel.text = "UP!!"
            count += 1
        }else if textInt! > randNumber{
            hintLabel.text = "DOWN!!"
            count += 1
        }else{
            count += 1
            hintLabel.text = "\(count) 번 만에 성공"
        }
    }
    
}

