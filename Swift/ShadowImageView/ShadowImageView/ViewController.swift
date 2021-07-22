//
//  ViewController.swift
//  ShadowImageView
//
//  Created by GSM02 on 2021/07/21.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var shadowView: UIView!
    
    var imgView = UIImage(named: "image0.jpg")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = imgView 
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        shadow()
    }

    func shadow(){
        shadowView.layer.shadowOffset = CGSize(width: 7, height: 7) //그림자 위치
        shadowView.layer.shadowOpacity = 0.5 //그림자 투명도 (0~1)
        shadowView.layer.shadowRadius = 4 //그림자 블러 정도
        shadowView.layer.shadowColor = UIColor.gray.cgColor //그림자 색
        shadowView.layer.shadowPath = nil //그림자의 모양
        shadowView.layer.masksToBounds = false //내부에 속한 요소들이 UIView 밖을 벗어날 때, 잘라낼 것인지 설정
        
    }
}

