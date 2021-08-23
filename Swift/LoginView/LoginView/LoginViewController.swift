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
    
    var mainLabel = UILabel().then {
        $0.text = "LOGIN"
        $0.textColor = .white
        $0.font = .boldSystemFont(ofSize: 40)
    }
    var backgroundView = UIView().then {
        $0.backgroundColor = .white
        $0.layer.cornerRadius =  20
    }
    var titleLabel = UILabel().then {
        $0.text = "로그인"
        $0.font = .systemFont(ofSize: 23)
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
        $0.placeholder = "   id를 입력하세요"
        $0.backgroundColor = UIColor(red: 236/255, green: 236/255, blue: 236/255, alpha: 1)
        $0.layer.cornerRadius = 5
    }
    var pwField = UITextField().then {
        $0.placeholder = "   pw를 입력하세요"
        $0.backgroundColor = UIColor(red: 236/255, green: 236/255, blue: 236/255, alpha: 1)
        $0.layer.cornerRadius = 5
    }
    var loginButton = UIButton().then {
        $0.setTitle("로그인", for: .normal)
        $0.titleLabel?.font = .boldSystemFont(ofSize: 18)
        $0.backgroundColor = UIColor(red: 130 / 255, green: 134 / 255, blue: 150 / 255, alpha : 1)
        $0.setTitleColor(.white, for: .normal)
        $0.layer.cornerRadius = 10
    }
    var forgotPwButton = UIButton().then {
        $0.setTitle("비밀번호를 잊으셨나요?", for: .normal)
        $0.setTitleColor(UIColor(red: 130 / 255, green: 134 / 255, blue: 150 / 255, alpha : 1), for: .normal)
        $0.titleLabel?.font = .boldSystemFont(ofSize: 15)
    }
    var notSignedUpButton = UIButton().then {
        $0.setTitle("아직 회원이 아니신가요?", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.titleLabel?.font = .boldSystemFont(ofSize: 15)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(red: 130 / 255, green: 134 / 255, blue: 150 / 255, alpha : 1)
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
        
        mainLabel.snp.makeConstraints { (make) in
            make.width.height.equalTo(self.mainLabel)
            make.centerX.equalToSuperview()
            make.centerY.equalTo(120)
        }
        backgroundView.snp.makeConstraints { (make) in
            make.height.equalTo(430)
            make.width.equalTo(350)
            make.center.equalToSuperview()
        }
        titleLabel.snp.makeConstraints { (make) in
            make.height.width.equalTo(self.titleLabel)
            make.centerX.equalToSuperview()
            make.centerY.equalTo(backgroundView.snp.top).offset(50)
        }
        idLabel.snp.makeConstraints { (make) in
            make.width.height.equalTo(self.idLabel)
            make.centerX.equalTo(backgroundView.snp.left).offset(60)
            make.centerY.equalTo(backgroundView.snp.top).offset(130)
        }
        pwLabel.snp.makeConstraints { (make) in
            make.width.height.equalTo(self.idLabel)
            make.centerX.equalTo(backgroundView.snp.left).offset(60)
            make.centerY.equalTo(idLabel.snp.bottom).offset(60)
        }
        idField.snp.makeConstraints { (make) in
            make.width.equalTo(230)
            make.height.equalTo(50)
            make.centerX.equalTo(idLabel.snp.right).offset(125)
            make.centerY.equalTo(idLabel.snp.centerY)
        }
        pwField.snp.makeConstraints { (make) in
            make.width.equalTo(230)
            make.height.equalTo(50)
            make.centerX.equalTo(idField.snp.centerX)
            make.centerY.equalTo(pwLabel.snp.centerY)
        }
        loginButton.snp.makeConstraints { (make) in
            make.width.equalTo(280)
            make.height.equalTo(40)
            make.centerX.equalToSuperview()
            make.centerY.equalTo(backgroundView.snp.bottom).inset(130)
        }
        forgotPwButton.snp.makeConstraints { (make) in
            make.width.height.equalToSuperview()
            make.centerX.equalToSuperview()
            make.centerY.equalTo(backgroundView.snp.bottom).inset(45)
        }
        notSignedUpButton.snp.makeConstraints { (make) in
            make.width.height.equalToSuperview()
            make.centerX.equalToSuperview()
            make.centerY.equalTo(self.view.snp.bottom).inset(100)
        }
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


