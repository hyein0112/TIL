//
//  pwResetViewController.swift
//  loginview
//
//  Created by GSM02 on 2021/08/26.
//

import UIKit

class pwResetViewController: UIViewController {

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
        $0.text = "비밀번호 재설정"
        $0.font = .systemFont(ofSize: 25)
        $0.textColor = .darkGray
    }
    var idLabel = UILabel().then {
        $0.text = "아이디"
        $0.textColor = .darkGray
    }
    var callNumLabel = UILabel().then {
        $0.text = "전화번호"
        $0.textColor = .darkGray
    }
    var certificationNumLabel = UILabel().then {
        $0.text = "인증번호"
        $0.textColor = UIColor(red: 76/255, green: 96/255, blue: 144/255, alpha: 1)
    }
    var idField = UITextField().then {
        $0.placeholder = "id를 입력하세요"
        $0.backgroundColor = UIColor(red: 236/255, green: 236/255, blue: 236/255, alpha: 1)
        $0.layer.cornerRadius = 5
    }
    var callNumField = UITextField().then {
        $0.placeholder = "전화번호를 입력하세요"
        $0.backgroundColor = UIColor(red: 236/255, green: 236/255, blue: 236/255, alpha: 1)
        $0.layer.cornerRadius = 5
    }
    var certificationPhoneNumButton = UIButton().then {
        $0.setTitle("번호 인증", for: .normal)
        $0.backgroundColor = UIColor(red: 76 / 255, green: 96 / 255, blue: 144 / 255, alpha : 1)
        $0.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-SemiBold", size: 12)
        $0.setTitleColor(.white, for: .normal)
        $0.layer.cornerRadius = 10
    }
    var certificationNumField = UITextField().then {
        $0.placeholder = "인증번호를 입력하세요"
        $0.backgroundColor = UIColor(red: 236/255, green: 242/255, blue: 255/255, alpha: 1)
        $0.layer.cornerRadius = 5
    }
    var pwResetButton = UIButton().then {
        $0.setTitle("비밀번호 바꾸러 가기", for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 16)
        $0.backgroundColor = UIColor(red: 76 / 255, green: 96 / 255, blue: 144 / 255, alpha : 1)
        $0.setTitleColor(.white, for: .normal)
        $0.layer.cornerRadius = 10
    }
    
    var loginButton = UIButton().then {
        $0.setTitle("로그인 하러 가기", for: .normal)
        $0.setTitleColor(UIColor(red: 51 / 255, green: 51 / 255, blue: 51 / 255, alpha : 1), for: .normal)
        $0.titleLabel?.font = .boldSystemFont(ofSize: 15)
        $0.addTarget(self, action: #selector(tablogin), for: .touchUpInside)
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
        self.view.addSubview(callNumLabel)
        self.view.addSubview(idField)
        self.view.addSubview(callNumField)
        self.view.addSubview(certificationNumField)
        self.view.addSubview(certificationNumLabel)
        self.view.addSubview(pwResetButton)
        self.view.addSubview(loginButton)
        self.view.addSubview(certificationPhoneNumButton)
        
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
            make.width.equalTo(165)
            make.height.equalTo(31)
            make.centerX.equalToSuperview()
            make.centerY.equalTo(backgroundView.snp.top).offset(50)
        }
        idLabel.snp.makeConstraints { (make) in
            make.width.height.equalTo(self.idLabel)
            make.left.equalTo(backgroundView.snp.left).offset(20)
            make.top.equalTo(backgroundView.snp.top).offset(110)
        }
        callNumLabel.snp.makeConstraints { (make) in
            make.width.height.equalTo(self.idLabel)
            make.left.equalTo(backgroundView.snp.left).offset(20)
            make.top.equalTo(idLabel.snp.bottom).offset(35)
        }
        certificationPhoneNumButton.snp.makeConstraints { (make) in
            make.width.equalTo(59)
            make.height.equalTo(22)
            make.right.equalTo(callNumField).inset(3)
            make.bottom.equalTo(callNumField).inset(7)
        }
        certificationNumLabel.snp.makeConstraints { (make) in
            make.width.height.equalTo(self.idLabel)
            make.left.equalTo(backgroundView.snp.left).offset(20)
            make.top.equalTo(callNumLabel.snp.bottom).offset(35)
        }
        idField.snp.makeConstraints { (make) in
            make.width.equalTo(240)
            make.height.equalTo(36)
            make.centerY.equalTo(idLabel.snp.centerY)
            make.left.equalTo(idLabel.snp.right).offset(5)
        }
        callNumField.snp.makeConstraints { (make) in
            make.width.equalTo(240)
            make.height.equalTo(36)
            make.left.equalTo(idField.snp.left)
            make.centerY.equalTo(callNumLabel.snp.centerY)
        }
        certificationNumField.snp.makeConstraints { (make) in
            make.width.equalTo(240)
            make.height.equalTo(36)
            make.left.equalTo(idField.snp.left)
            make.centerY.equalTo(certificationNumLabel.snp.centerY)
        }
        pwResetButton.snp.makeConstraints { (make) in
            make.width.equalTo(272)
            make.height.equalTo(36)
            make.centerX.equalToSuperview()
            make.top.equalTo(certificationNumField.snp.bottom).offset(40)
        }
        loginButton.snp.makeConstraints { (make) in
            make.width.height.equalTo(self.loginButton)
            make.centerX.equalToSuperview()
            make.centerY.equalTo(backgroundView.snp.bottom).inset(40)
        }
    }
    
    @objc func tablogin() {
        let controller = LoginViewController()
            navigationController?.pushViewController(controller, animated: true)
    }
    
}
        

//MARK: - Preview
#if DEBUG
import SwiftUI
struct pwResetViewControllerRepresentable: UIViewControllerRepresentable {
    
func updateUIViewController(_ uiView: UIViewController,context: Context) {
        // leave this empty
}
    @available(iOS 13.0.0, *)
    func makeUIViewController(context: Context) -> UIViewController{
        pwResetViewController()
    }

}
@available(iOS 13.0, *)
struct pwResetViewControllerRepresentable_PreviewProvider: PreviewProvider {
    static var previews: some View {
        Group {
            pwResetViewControllerRepresentable()
                .ignoresSafeArea()
                .previewDisplayName("Preview")
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
        }
        
    }
} #endif
