//
//  ViewController.swift
//  SnapKit_and_Then
//
//  Created by GSM02 on 2021/07/11.
//

import UIKit

import SnapKit
import Then

class ViewController: UIViewController {

    lazy var text = UILabel().then {
            $0.text = "TEXT"
            $0.textColor = .red
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            configureUI()
        }
        
        func configureUI(){
            view.backgroundColor = .white
            
            view.addSubview(text)
            
            text.snp.makeConstraints { make in
                make.center.equalToSuperview()
            }
        }

}

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

