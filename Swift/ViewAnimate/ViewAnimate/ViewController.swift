//
//  ViewController.swift
//  ViewAnimate
//
//  Created by GSM02 on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var extendView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapOnButton(_ sender: Any) {
        UIView.animate(withDuration: 3, //3초동안
                       delay: 0.1, //0.1초 delay
                       options: .curveEaseInOut, //커브값 설정
                       animations: { () -> Void in
                        self.extendView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 500)
                        //직사각형 그리기
                },
                completion: { (didFinish) -> Void in }) //작업 후 필요한 작업이 있으면 작성
    }
}

