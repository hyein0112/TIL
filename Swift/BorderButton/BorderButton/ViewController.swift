//
//  ViewController.swift
//  BorderButton
//
//  Created by GSM02 on 2021/08/19.
//

import UIKit

import SnapKit
import Then

class ViewController: UIViewController {
    
    var yellowFlag = false
    var purpleFlag = false
    var orangeFlag = false
    
    let yellowButton = UIButton().then {
        $0.setTitle("YELLOW", for: .normal)
        $0.setTitleColor(.Yellow, for: .normal)
        $0.backgroundColor = .white
        $0.layer.borderWidth = 1
        $0.layer.borderColor = .Yellow
        $0.layer.cornerRadius = 10
        $0.addTarget(self, action: #selector(tapYellow), for: .touchUpInside)
    }
    
    let purpleButton = UIButton().then {
        $0.setTitle("PURPLE", for: .normal)
        $0.setTitleColor(.Purple, for: .normal)
        $0.backgroundColor = .white
        $0.layer.borderWidth = 1
        $0.layer.borderColor = .Purple
        $0.layer.cornerRadius = 10
        $0.addTarget(self, action: #selector(tapPurple), for: .touchUpInside)
    }
    
    let orangeButton = UIButton().then {
        $0.setTitle("ORANGE", for: .normal)
        $0.setTitleColor(.Orange, for: .normal)
        $0.backgroundColor = .white
        $0.layer.borderWidth = 1
        $0.layer.borderColor = .Orange
        $0.layer.cornerRadius = 10
        $0.addTarget(self, action: #selector(tapYellow), for: .touchUpInside)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureUI()
    }
    
    @objc func tapYellow(){
        if yellowFlag == false {
            yellowButton.backgroundColor = .Yellow
            yellowButton.setTitleColor(.white, for: .normal)
            yellowFlag = true
        } else {
            yellowButton.backgroundColor = .white
            yellowButton.setTitleColor(.Yellow, for: .normal)
            yellowFlag = false
        }
    }
    @objc func tapPurple(){
        if purpleFlag == false {
            purpleButton.backgroundColor = .Purple
            purpleButton.setTitleColor(.white, for: .normal)
            purpleFlag = true
        } else {
            purpleButton.backgroundColor = .white
            purpleButton.setTitleColor(.Purple, for: .normal)
            purpleFlag = false
        }
    }
    @objc func tapOrange(){
        if orangeFlag == false {
            orangeButton.backgroundColor = .Orange
            orangeButton.setTitleColor(.white, for: .normal)
            orangeFlag = true
        } else {
            orangeButton.backgroundColor = .white
            orangeButton.setTitleColor(.Orange, for: .normal)
            orangeFlag = false
        }
    }
    
    func configureUI() {
        self.view.addSubview(yellowButton)
        self.view.addSubview(purpleButton)
        self.view.addSubview(orangeButton)
        

        yellowButton.snp.makeConstraints{(make) in
            make.width.equalTo(90)
            make.height.equalTo(35)
            make.centerX.equalToSuperview()
            make.centerY.equalTo(purpleButton.snp.bottom).inset(100)
        }
        purpleButton.snp.makeConstraints{(make) in
            make.width.equalTo(90)
            make.height.equalTo(35)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        orangeButton.snp.makeConstraints{(make) in
            make.width.equalTo(90)
            make.height.equalTo(35)
            make.centerX.equalToSuperview()
            make.centerY.equalTo(purpleButton.snp.top).offset(100)
        }
    }

}

extension UIColor{ //UIColor
    
    //rgb값으로 색 생성
    static func rgb(red: CGFloat ,green: CGFloat,blue:CGFloat) -> UIColor{
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
  
    static let Yellow = UIColor.rgb(red: 255, green: 209, blue: 141) //Yellow 정의
    static let Purple = UIColor.rgb(red: 150, green: 141, blue: 255) //Purple 정의
    static let Orange = UIColor.rgb(red: 255, green: 166, blue: 128) //Orange 정의
}

extension CGColor{ //CGColor
    static let Yellow = UIColor.rgb(red: 255, green: 209, blue: 141).cgColor //Yellow 정의
    static let Purple = UIColor.rgb(red: 150, green: 141, blue: 255).cgColor //Purple 정의
    static let Orange = UIColor.rgb(red: 255, green: 166, blue: 128).cgColor //Orange 정의
}


//MARK: - Preview

#if DEBUG
import SwiftUI
struct ViewControllerRepresentable: UIViewControllerRepresentable {
    
func updateUIViewController(_ uiView: UIViewController,context: Context) {
        // leave this empty
}
    @available(iOS 13.0.0, *)
    func makeUIViewController(context: Context) -> UIViewController{
        ViewController()
    }
}
@available(iOS 13.0, *)
struct ViewControllerRepresentable_PreviewProvider: PreviewProvider {
    static var previews: some View {
        Group {
            ViewControllerRepresentable()
                .ignoresSafeArea()
                .previewDisplayName(/*@START_MENU_TOKEN@*/"Preview"/*@END_MENU_TOKEN@*/)
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
        }
        
    }
} #endif
