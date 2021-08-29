//
//  ViewController.swift
//  AutoLayout_Snapkit
//
//  Created by GSM02 on 2021/08/29.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    var redView = UIView()
    var orangeView = UIView()
    var yellowView = UIView()
    var greenView = UIView()
    var blueView = UIView()
    var indigoView = UIView()
    var purpleView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(redView)
        self.view.addSubview(orangeView)
        self.view.addSubview(yellowView)
        self.view.addSubview(greenView)
        self.view.addSubview(blueView)
        self.view.addSubview(indigoView)
        self.view.addSubview(purpleView)
        
        redView.backgroundColor = .red
        orangeView.backgroundColor = .orange
        yellowView.backgroundColor = .yellow
        greenView.backgroundColor = .green
        blueView.backgroundColor = .blue
        indigoView.backgroundColor = .systemIndigo
        purpleView.backgroundColor = .purple
        
        redView.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top)
            make.size.equalTo(CGSize(width: 100, height: 100))
            make.left.equalTo(view.snp.left)
        }
        orangeView.snp.makeConstraints { make in
            make.top.equalTo(redView.snp.bottom)
            make.size.equalTo(CGSize(width: 100, height: 100))
            make.left.equalTo(redView.snp.left)
        }
        yellowView.snp.makeConstraints { make in
            make.top.equalTo(orangeView.snp.bottom)
            make.size.equalTo(CGSize(width: 100, height: 100))
            make.left.equalTo(orangeView.snp.left)
        }
        greenView.snp.makeConstraints { make in
            make.top.equalTo(yellowView.snp.top)
            make.size.equalTo(CGSize(width: 100, height: 100))
            make.left.equalTo(yellowView.snp.right)
        }
        blueView.snp.makeConstraints { make in
            make.top.equalTo(greenView.snp.top)
            make.size.equalTo(CGSize(width: 100, height: 100))
            make.left.equalTo(greenView.snp.right)
        }
        indigoView.snp.makeConstraints { make in
            make.top.equalTo(blueView.snp.top)
            make.size.equalTo(CGSize(width: 100, height: 100))
            make.left.equalTo(blueView.snp.right)
        }
 
        purpleView.snp.makeConstraints { make in
            make.center.equalTo(view.snp.center)
            make.size.equalTo(CGSize(width: 100, height: 100))
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

