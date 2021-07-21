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
        shadowView.layer.shadowOffset = CGSize(width: 10, height: 10) //그림자 위치
        shadowView.layer.shadowOpacity = 0.5 //그림자 투명도 (0~1)
        shadowView.layer.shadowRadius = 7 //그림자 블러 정도
        shadowView.layer.shadowColor = UIColor.gray.cgColor //그림자 색
        shadowView.layer.shadowPath = nil //그림자의 모양
        
    }
}

