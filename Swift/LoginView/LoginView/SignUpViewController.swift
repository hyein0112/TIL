//
//  SignUpViewController.swift
//  loginview
//
//  Created by GSM02 on 2021/08/24.
//

import UIKit

import SnapKit
import Then

class SignUpViewController: UIViewController {

    var imageView = UIImageView().then {
        $0.image = UIImage(named:"bgimage.png")
    }
    var mainLabel = UILabel().then {
        $0.text = "ASSIGNMENT"
        $0.textColor = .white
        $0.font = UIFont(name: "Apple SD Gothic Neo", size: 30)
    }
    var backgroundView = UIView().then {
        $0.backgroundColor = .white
        $0.layer.cornerRadius =  20
    }
    var titleLabel = UILabel().then {
        $0.text = "회원가입"
        $0.font = UIFont(name: "Apple SD Gothic Neo", size: 25)
        $0.textColor = UIColor(red: 118/255, green: 118/255, blue: 118/255, alpha: 1)
    }
    var idLabel = UILabel().then {
        $0.text = "아이디"
        $0.font = UIFont(name: "Apple SD Gothic Neo", size: 13)
        $0.textColor = UIColor(red: 150/255, green: 150/255, blue: 150/255, alpha: 1)
    }
    var pwLabel = UILabel().then {
        $0.text = "비밀번호"
        $0.font = UIFont(name: "Apple SD Gothic Neo", size: 13)
        $0.textColor = UIColor(red: 150/255, green: 150/255, blue: 150/255, alpha: 1)
    }
    var pwCheckLabel = UILabel().then {
        $0.numberOfLines = 2
        $0.text = "비밀번호\n확인"
        $0.textAlignment = .center
        $0.font = UIFont(name: "Apple SD Gothic Neo", size: 13)
        $0.textColor = UIColor(red: 150/255, green: 150/255, blue: 150/255, alpha: 1)
    }
    var callNumLabel = UILabel().then {
        $0.text = "전화번호"
        $0.font = UIFont(name: "Apple SD Gothic Neo", size: 13)
        $0.textColor = UIColor(red: 150/255, green: 150/255, blue: 150/255, alpha: 1)
    }
    var idField = UITextField().then {
        $0.placeholder = "id를 입력하세요"
        $0.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        $0.layer.cornerRadius = 5
    }
    var pwField = UITextField().then {
        $0.placeholder = "pw를 입력하세요"
        $0.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        $0.layer.cornerRadius = 5
    }
    var pwCheckField = UITextField().then {
        $0.placeholder = "pw를 다시 입력하세요"
        $0.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        $0.layer.cornerRadius = 5
    }
    var callNumField = UITextField().then {
        $0.placeholder = "전화번호를 입력하세요"
        $0.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        $0.layer.cornerRadius = 5
    }
    var signUpButton = UIButton().then {
        $0.setTitle("회원가입", for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 13)
        $0.backgroundColor = UIColor(red: 76 / 255, green: 96 / 255, blue: 144 / 255, alpha : 1)
        $0.setTitleColor(.white, for: .normal)
        $0.layer.cornerRadius = 10
    }
    
    var alreadySignedUpButton = UIButton().then {
        $0.setTitle("이미 회원이신가요?", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 13, weight: .semibold)
        $0.addTarget(self, action: #selector(tabAlreadySignUp), for: .touchUpInside)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureUI()
    }
    
    func configureUI() {
        self.view.addSubview(imageView)
        self.view.addSubview(mainLabel)
        self.view.addSubview(backgroundView)
        self.view.addSubview(titleLabel)
        self.view.addSubview(idLabel)
        self.view.addSubview(pwLabel)
        self.view.addSubview(pwCheckLabel)
        self.view.addSubview(callNumLabel)
        self.view.addSubview(idField)
        self.view.addSubview(pwField)
        self.view.addSubview(pwCheckField)
        self.view.addSubview(callNumField)
        self.view.addSubview(signUpButton)
        self.view.addSubview(alreadySignedUpButton)
        
        imageView.snp.makeConstraints { (make) in
            make.width.height.equalToSuperview()
            make.center.equalToSuperview()
        }
        mainLabel.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(2.21)
            make.height.equalToSuperview().dividedBy(22.56)
            make.top.equalToSuperview().offset(self.view.frame.height/14.25)
            make.centerX.equalToSuperview()
        }
        backgroundView.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(1.1)
            make.height.equalToSuperview().dividedBy(1.96)
            make.top.equalToSuperview().offset(self.view.frame.height/5.21)
            make.centerX.equalToSuperview()
        }
        titleLabel.snp.makeConstraints { (make) in
            make.width.equalToSuperview().dividedBy(4.26)
            make.height.equalToSuperview().dividedBy(26.19)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(self.view.frame.height/3.96)
        }
        idLabel.snp.makeConstraints { (make) in
            make.width.equalToSuperview().dividedBy(11.03)
            make.height.equalToSuperview().dividedBy(50.75)
            make.left.equalToSuperview().offset(self.view.frame.width/10.14)
            make.top.equalToSuperview().offset(self.view.frame.height/2.8)
        }
        pwLabel.snp.makeConstraints { (make) in
            make.width.equalToSuperview().dividedBy(7.21)
            make.height.equalToSuperview().dividedBy(50.75)
            make.left.equalTo(idLabel)
            make.top.equalToSuperview().offset(self.view.frame.height/2.38)
        }
        pwCheckLabel.snp.makeConstraints { (make) in
            make.width.equalToSuperview().dividedBy(7.21)
            make.height.equalToSuperview().dividedBy(28)
            make.left.equalToSuperview().offset(self.view.frame.width/11.36)
            make.top.equalToSuperview().offset(self.view.frame.height/2.11)
        }
        callNumLabel.snp.makeConstraints { (make) in
            make.width.height.equalTo(pwLabel)
            make.left.equalTo(idLabel)
            make.top.equalToSuperview().offset(self.view.frame.height/1.83)
        }
        idField.snp.makeConstraints { (make) in
            make.width.equalToSuperview().dividedBy(1.5)
            make.height.equalToSuperview().dividedBy(22.56)
            make.top.equalToSuperview().offset(self.view.frame.height/2.91)
            make.left.equalToSuperview().offset(self.view.frame.width/4.21)
        }
        pwField.snp.makeConstraints { (make) in
            make.width.height.equalTo(idField)
            make.left.equalTo(idField)
            make.top.equalToSuperview().offset(self.view.frame.height/2.46)
        }
        pwCheckField.snp.makeConstraints { (make) in
            make.width.height.equalTo(idField)
            make.left.equalTo(idField)
            make.top.equalToSuperview().offset(self.view.frame.height/2.13)
        }
        callNumField.snp.makeConstraints { (make) in
            make.width.height.equalTo(idField)
            make.left.equalTo(idField)
            make.top.equalToSuperview().offset(self.view.frame.height/1.88)
        }
        signUpButton.snp.makeConstraints { (make) in
            make.width.equalToSuperview().dividedBy(1.38)
            make.height.equalTo(idField)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(self.view.frame.height/1.61)
        }
        alreadySignedUpButton.snp.makeConstraints { (make) in
            make.width.equalToSuperview().dividedBy(3.75)
            make.height.equalToSuperview().dividedBy(50.75)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().inset(self.view.frame.height/12.12)
        }
    }
    
    @objc func tabAlreadySignUp() {
        let controller = LoginViewController()
            navigationController?.pushViewController(controller, animated: true)
    }
    
}
        

//MARK: - Preview
#if DEBUG
import SwiftUI
struct SignUpViewControllerRepresentable: UIViewControllerRepresentable {
    
func updateUIViewController(_ uiView: UIViewController,context: Context) {
        // leave this empty
}
    @available(iOS 13.0.0, *)
    func makeUIViewController(context: Context) -> UIViewController{
        SignUpViewController()
    }

}
@available(iOS 13.0, *)
struct SignUpViewControllerRepresentable_PreviewProvider: PreviewProvider {
    static var previews: some View {
        Group {
            SignUpViewControllerRepresentable()
                .ignoresSafeArea()
                .previewDisplayName("Preview")
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
        }
        
    }
} #endif

