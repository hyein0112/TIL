//
//  ViewController.swift
//  FirstProgrammatically
//
//  Created by GSM02 on 2021/08/11.
//

import UIKit

class ViewController: UIViewController {
    
    //label 생성
    let label : UILabel = {
        let label = UILabel()
        label.text = "LABEL" //텍스트
        label.textColor = .red //색
        label.font = UIFont.systemFont(ofSize: 20) //폰트, 폰트사이즈
        label.textAlignment = .center //가운데정렬
        return label
    }()
    
    //button 생성
    let button : UIButton = {
        let button = UIButton()
        button.setTitle("BUTTON", for: .normal) //버튼의 타이틀
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20) //폰트, 폰트사이즈
        button.setTitleColor(.white, for: .normal) //타이틀 색
        button.backgroundColor = .purple //배경색
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI(){
        view.addSubview(label) //label을 view에 보이게 함
        view.addSubview(button) //button을 view에 보이게 함
        label.frame = CGRect(x: 150, y: 300, width: 100, height: 50) //label의 위치 및 크기
        button.frame = CGRect(x: 150, y: 400, width: 100, height: 30) //button의 위치 및 크기
    }
    
}

// MARK: - Priview

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
