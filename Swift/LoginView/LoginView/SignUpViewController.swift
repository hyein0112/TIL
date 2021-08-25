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
        $0.font = .systemFont(ofSize: 30)
    }
    var backgroundView = UIView().then {
        $0.backgroundColor = .white
        $0.layer.cornerRadius =  20
    }
    var titleLabel = UILabel().then {
        $0.text = "회원가입"
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
    var pwCheckLabel = UILabel().then {
        $0.numberOfLines = 2
        $0.text = "비밀번호\n확인"
        $0.textAlignment = .center
        $0.textColor = .darkGray
    }
    var callNumLabel = UILabel().then {
        $0.text = "전화번호"
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
    var pwCheckField = UITextField().then {
        $0.placeholder = "pw를 다시 입력하세요"
        $0.backgroundColor = UIColor(red: 236/255, green: 236/255, blue: 236/255, alpha: 1)
        $0.layer.cornerRadius = 5
    }
    var callNumField = UITextField().then {
        $0.placeholder = "전화번호를 입력하세요"
        $0.backgroundColor = UIColor(red: 236/255, green: 236/255, blue: 236/255, alpha: 1)
        $0.layer.cornerRadius = 5
    }
    var signUpButton = UIButton().then {
        $0.setTitle("회원가입", for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 16)
        $0.backgroundColor = UIColor(red: 76 / 255, green: 96 / 255, blue: 144 / 255, alpha : 1)
        $0.setTitleColor(.white, for: .normal)
        $0.layer.cornerRadius = 10
    }
    
    var alreadySignedUpButton = UIButton().then {
        $0.setTitle("이미 회원이신가요?", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.titleLabel?.font = .boldSystemFont(ofSize: 15)
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
            make.width.equalTo(100)
            make.height.equalTo(31)
            make.centerX.equalToSuperview()
            make.centerY.equalTo(backgroundView.snp.top).offset(50)
        }
        idLabel.snp.makeConstraints { (make) in
            make.width.height.equalTo(self.idLabel)
            make.left.equalTo(backgroundView.snp.left).offset(20)
            make.top.equalTo(backgroundView.snp.top).offset(110)
        }
        pwLabel.snp.makeConstraints { (make) in
            make.width.height.equalTo(self.idLabel)
            make.left.equalTo(backgroundView.snp.left).offset(20)
            make.top.equalTo(idLabel.snp.bottom).offset(35)
        }
        pwCheckLabel.snp.makeConstraints { (make) in
            make.width.equalTo(pwLabel.snp.width)
            make.height.equalTo(50)
            make.left.equalTo(backgroundView.snp.left).offset(20)
            make.top.equalTo(pwLabel.snp.bottom).offset(22)
        }
        callNumLabel.snp.makeConstraints { (make) in
            make.width.height.equalTo(self.idLabel)
            make.left.equalTo(backgroundView.snp.left).offset(20)
            make.top.equalTo(pwCheckLabel.snp.bottom).offset(20)
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
        pwCheckField.snp.makeConstraints { (make) in
            make.width.equalTo(240)
            make.height.equalTo(36)
            make.centerY.equalTo(pwCheckLabel.snp.centerY)
            make.left.equalTo(idField.snp.left)
        }
        callNumField.snp.makeConstraints { (make) in
            make.width.equalTo(240)
            make.height.equalTo(36)
            make.left.equalTo(idField.snp.left)
            make.centerY.equalTo(callNumLabel.snp.centerY)
        }
        signUpButton.snp.makeConstraints { (make) in
            make.width.equalTo(272)
            make.height.equalTo(36)
            make.centerX.equalToSuperview()
            make.top.equalTo(callNumField.snp.bottom).offset(40)
        }
        alreadySignedUpButton.snp.makeConstraints { (make) in
            make.width.height.equalToSuperview()
            make.centerX.equalToSuperview()
            make.centerY.equalTo(self.view.snp.bottom).inset(70)
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

