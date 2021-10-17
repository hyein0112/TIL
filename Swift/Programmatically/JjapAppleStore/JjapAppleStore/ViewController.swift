//
//  ViewController.swift
//  JjapAppleStore
//
//  Created by GSM02 on 2021/10/16.
//

import UIKit
import SnapKit
import Then

class ViewController: UIViewController {
    
    lazy var forYouLabel = UILabel().then {
        $0.text = "For You"
        $0.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 28)
        $0.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    lazy var profilePhoto = UIImageView().then{
        $0.image = UIImage(named: "img1.png")
    }
    
    lazy var line1 = UIView().then {
        $0.backgroundColor = UIColor(red: 0.708, green: 0.708, blue: 0.708, alpha: 1)
    }
    
    lazy var informationLabel = UILabel().then {
        $0.text = "최신 정보입니다, 몽키 님"
        $0.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 20)
        $0.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    lazy var suggestionLabel = UILabel().then {
        $0.text = "고객님을 위한 제안"
        $0.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)

        $0.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 14)
    }
    
    lazy var equipmentLabel = UILabel().then {
        $0.text = "고객님의 기기"
        $0.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        $0.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 20)
    }
    
    lazy var learnMoreButton = UIButton().then {
        $0.setTitle("모두 보기", for: .normal)
        $0.setTitleColor(UIColor(red: 0, green: 0.4, blue: 1, alpha: 1),
                         for: .normal)
        $0.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-Light", size: 8)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        addView()
        location()
    }
    
//MARK: - addView
    func addView() {
        self.view.addSubview(forYouLabel)
        self.view.addSubview(line1)
        self.view.addSubview(informationLabel)
        self.view.addSubview(profilePhoto)
        self.view.addSubview(suggestionLabel)
        self.view.addSubview(equipmentLabel)
        self.view.addSubview(learnMoreButton)
    }
    
//MARK: - location
    func location() {
        forYouLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(self.view.frame.width/14.42)
            make.top.equalToSuperview().offset(self.view.frame.height/15.92)
        }
        
        line1.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(1.16)
            make.height.equalTo(self.view.frame.height/812)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(self.view.frame.height/9.55)
        }
        
        informationLabel.snp.makeConstraints { make in
            make.left.equalTo(forYouLabel)
            make.top.equalTo(forYouLabel.snp.bottom).offset(self.view.frame.height/54.13)
        }
        
        profilePhoto.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(11.63)
            make.left.equalTo(forYouLabel.snp.right).offset(self.view.frame.width/1.95)
            make.top.equalToSuperview().offset(self.view.frame.height/18.45)
        }
        
        suggestionLabel.snp.makeConstraints { make in
            make.left.equalTo(informationLabel)
            make.top.equalTo(informationLabel.snp.bottom).offset(self.view.frame.height/4.75)
        }
        
        equipmentLabel.snp.makeConstraints { make in
            make.left.equalTo(suggestionLabel)
            make.top.equalTo(suggestionLabel.snp.bottom).offset(self.view.frame.height/4.95)
        }
        
        learnMoreButton.snp.makeConstraints { make in
            make.left.equalTo(equipmentLabel.snp.right).offset(self.view.frame.width/2.01)
            make.top.equalTo(suggestionLabel.snp.bottom).offset(self.view.frame.height/4.64)
        }
    }

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
