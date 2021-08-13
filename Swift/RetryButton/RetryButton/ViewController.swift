//
//  ViewController.swift
//  RetryButton
//
//  Created by GSM02 on 2021/08/13.
//

import UIKit

class ViewController: UIViewController {

    //button1 생성
    let button1: UIButton = {
        let button1 = UIButton()
        button1.setTitle("Button", for: .normal) //타이틀
        button1.backgroundColor = .systemYellow //배경색
        button1.layer.cornerRadius = 10 //10만큼 둥글게
        
        return button1
    }()
    
    //button2 생성
    let button2: UIButton = {
        let button2 = UIButton()
        button2.setTitle(.none, for: .normal) //타이틀
        button2.backgroundColor = .systemGreen //배경색
        button2.layer.cornerRadius = 15 //15만큼 둥글게
        
        return button2
    }()
    
    //button3 생성
    let button3: UIButton = {
        let button3 = UIButton()
        button3.setTitle("Button", for: .normal) //타이틀
        button3.titleLabel?.font = UIFont.italicSystemFont(ofSize: 15) //타이틀 라벨의 폰트
        button3.setTitleColor(.red, for: .normal) //타이틀 색
        
        return button3
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureUI()

    }

    func configureUI(){
        //버튼들을 view에 보이게 함
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        
        //버튼들의 위치 및 크기를 설정
        button1.frame = CGRect(x: 160, y: 200, width: 86, height: 53)
        button2.frame = CGRect(x: 185, y: 370, width: 30, height: 30)
        button3.frame = CGRect(x: 160, y: 500, width: 86, height: 53)
    }

}

