//
//  ViewController.swift
//  loginview
//
//  Created by GSM02 on 2021/08/23.
//

import UIKit

import SnapKit
import Then

class LoginViewController: UIViewController {
    
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
        $0.text = "로그인"
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
    var loginButton = UIButton().then {
        $0.setTitle("로그인", for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 13)
        $0.backgroundColor = UIColor(red: 76 / 255, green: 96 / 255, blue: 144 / 255, alpha : 1)
        $0.setTitleColor(.white, for: .normal)
        $0.layer.cornerRadius = 10
    }
    var forgotPwButton = UIButton().then {
        $0.setTitle("비밀번호를 잊으셨나요?", for: .normal)
        $0.setTitleColor(UIColor(red: 51 / 255, green: 51 / 255, blue: 51 / 255, alpha : 1), for: .normal)
        $0.titleLabel?.font = UIFont(name: "Apple SD Gothic Neo", size: 13)
        $0.addTarget(self, action: #selector(tabForgotPw), for: .touchUpInside)
    }
    var notSignedUpButton = UIButton().then {
        $0.setTitle("아직 회원이 아니신가요?", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 13, weight: .semibold)
        $0.addTarget(self, action: #selector(tabNotSignUp), for: .touchUpInside)
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
        self.view.addSubview(idField)
        self.view.addSubview(pwField)
        self.view.addSubview(loginButton)
        self.view.addSubview(forgotPwButton)
        self.view.addSubview(notSignedUpButton)
        
        imageView.snp.makeConstraints { make in
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
        titleLabel.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(5.6)
            make.height.equalToSuperview().dividedBy(26.19)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(self.view.frame.height/3.96)
        }
        idLabel.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(11.03)
            make.height.equalToSuperview().dividedBy(50.75)
            make.left.equalToSuperview().offset(self.view.frame.width/10.14)
            make.top.equalToSuperview().offset(self.view.frame.height/2.8)
        }
        pwLabel.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(7.21)
            make.height.equalToSuperview().dividedBy(50.75)
            make.left.equalTo(idLabel)
            make.top.equalToSuperview().offset(self.view.frame.height/2.38)
        }
        idField.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(1.5)
            make.height.equalToSuperview().dividedBy(22.56)
            make.top.equalToSuperview().offset(self.view.frame.height/2.91)
            make.left.equalToSuperview().offset(self.view.frame.width/4.21)
        }
        pwField.snp.makeConstraints { make in
            make.width.equalTo(idField)
            make.height.equalTo(idField)
            make.left.equalTo(idField)
            make.top.equalToSuperview().offset(self.view.frame.height/2.46)
        }
        loginButton.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(1.38)
            make.height.equalTo(idField)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(self.view.frame.height/1.99)
        }
        forgotPwButton.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(3.07)
            make.height.equalToSuperview().dividedBy(50.75)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().inset(self.view.frame.height/2.88)
        }
        notSignedUpButton.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(2.98)
            make.height.equalToSuperview().dividedBy(50.75)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().inset(self.view.frame.height/12.12)
        }
    }
    
    @objc func tabNotSignUp() {
        let controller = SignUpViewController()
            navigationController?.pushViewController(controller, animated: true)
    }
    @objc func tabForgotPw() {
        let controller = pwResetViewController()
            navigationController?.pushViewController(controller, animated: true)
    }
}
        
        

//MARK: - Preview
#if DEBUG
import SwiftUI
struct LoginViewControllerRepresentable: UIViewControllerRepresentable {
    
func updateUIViewController(_ uiView: UIViewController,context: Context) {
        // leave this empty
}
    @available(iOS 13.0.0, *)
    func makeUIViewController(context: Context) -> UIViewController{
        LoginViewController()
    }

}
@available(iOS 13.0, *)
struct LoginViewControllerRepresentable_PreviewProvider: PreviewProvider {
    static var previews: some View {
        Group {
            LoginViewControllerRepresentable()
                .ignoresSafeArea()
                .previewDisplayName("Preview")
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
        }
        
    }
} #endif


