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
        $0.font = .systemFont(ofSize: 30)
    }
    var backgroundView = UIView().then {
        $0.backgroundColor = .white
        $0.layer.cornerRadius =  20
    }
    var titleLabel = UILabel().then {
        $0.text = "로그인"
        $0.font = .systemFont(ofSize: 25)
        $0.textColor = .darkGray
    }
    var idLabel = UILabel().then {
        $0.text = "아이디"
        $0.textColor = .darkGray
    }
    var pwLabel = UILabel().then {
        $0.text = "비밀번호"
        $0.textColor = .darkGray
    }
    var idField = UITextField().then {
        $0.placeholder = "id를 입력하세요"
        $0.backgroundColor = UIColor(red: 236/255, green: 236/255, blue: 236/255, alpha: 1)
        $0.layer.cornerRadius = 5
    }
    var pwField = UITextField().then {
        $0.placeholder = "pw를 입력하세요"
        $0.backgroundColor = UIColor(red: 236/255, green: 236/255, blue: 236/255, alpha: 1)
        $0.layer.cornerRadius = 5
    }
    var loginButton = UIButton().then {
        $0.setTitle("로그인", for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 16)
        $0.backgroundColor = UIColor(red: 76 / 255, green: 96 / 255, blue: 144 / 255, alpha : 1)
        $0.setTitleColor(.white, for: .normal)
        $0.layer.cornerRadius = 10
    }
    var forgotPwButton = UIButton().then {
        $0.setTitle("비밀번호를 잊으셨나요?", for: .normal)
        $0.setTitleColor(UIColor(red: 130 / 255, green: 134 / 255, blue: 150 / 255, alpha : 1), for: .normal)
        $0.titleLabel?.font = .boldSystemFont(ofSize: 15)
        $0.addTarget(self, action: #selector(tabForgotPw), for: .touchUpInside)
    }
    var notSignedUpButton = UIButton().then {
        $0.setTitle("아직 회원이 아니신가요?", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.titleLabel?.font = .boldSystemFont(ofSize: 15)
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
        
        imageView.snp.makeConstraints { (make) in
            make.width.height.equalToSuperview()
            make.center.equalToSuperview()
        }
        mainLabel.snp.makeConstraints { (make) in
            make.top.equalTo(60)
            make.centerX.equalToSuperview()
        }
        backgroundView.snp.makeConstraints { (make) in
            make.width.equalTo(340)
            make.height.equalTo(414)
            make.top.equalTo(160)
            make.centerX.equalToSuperview()
        }
        titleLabel.snp.makeConstraints { (make) in
            make.width.equalTo(67)
            make.height.equalTo(31)
            make.centerX.equalToSuperview()
            make.centerY.equalTo(backgroundView.snp.top).offset(50)
        }
        idLabel.snp.makeConstraints { (make) in
            make.width.height.equalTo(self.idLabel)
            make.left.equalTo(backgroundView.snp.left).offset(20)
            make.top.equalTo(backgroundView.snp.top).offset(134)
        }
        pwLabel.snp.makeConstraints { (make) in
            make.width.height.equalTo(self.idLabel)
            make.left.equalTo(backgroundView.snp.left).offset(20)
            make.top.equalTo(backgroundView.snp.top).offset(185)
        }
        idField.snp.makeConstraints { (make) in
            make.width.equalTo(240)
            make.height.equalTo(36)
            make.centerY.equalTo(idLabel.snp.centerY)
            make.left.equalTo(idLabel.snp.right).offset(5)
        }
        pwField.snp.makeConstraints { (make) in
            make.width.equalTo(240)
            make.height.equalTo(36)
            make.left.equalTo(idField.snp.left)
            make.centerY.equalTo(pwLabel.snp.centerY)
        }
        loginButton.snp.makeConstraints { (make) in
            make.width.equalTo(272)
            make.height.equalTo(36)
            make.centerX.equalToSuperview()
            make.top.equalTo(pwField.snp.bottom).offset(43)
        }
        forgotPwButton.snp.makeConstraints { (make) in
            make.width.equalTo(self.forgotPwButton)
            make.centerX.equalToSuperview()
            make.centerY.equalTo(backgroundView.snp.bottom).inset(40)
        }
        notSignedUpButton.snp.makeConstraints { (make) in
            make.width.equalTo(self.notSignedUpButton)
            make.centerX.equalToSuperview()
            make.centerY.equalTo(self.view.snp.bottom).inset(70)
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


