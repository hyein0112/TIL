//
//  ViewController.swift
//  snapkit_tutorial
//
//  Created by GSM02 on 2021/08/16.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let yellowBox : UIView = {
        let yellowBox = UIView()
        yellowBox.backgroundColor = .yellow
        return yellowBox
    }()

    let greenBox : UIView = {
        let greenBox = UIView()
        greenBox.backgroundColor = .green
        return greenBox
    }()

    let redBox : UIView = {
        let redBox = UIView()
        redBox.backgroundColor = .red
        return redBox
    }()

    let blueBox : UIView = {
        let blueBox = UIView()
        blueBox.backgroundColor = .blue
        return blueBox
    }()

    var myButton = {(color: UIColor) -> UIButton in
        let button = UIButton(type: .system)
        button.backgroundColor = color
        button.setTitle("My Button", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 16
        return button
    }

    var greenBoxTopConstraint: Constraint? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.addSubview(yellowBox)
        self.view.addSubview(greenBox)
        self.view.addSubview(redBox)
        self.view.addSubview(blueBox)
        
        let myDarkGrayButton = myButton(.darkGray)
        self.view.addSubview(myDarkGrayButton)
        
        //스냅킷 사용
        yellowBox.snp.makeConstraints { (make) in
//            make.edges.equalTo(self.view).inset(UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20))
            make.edges.equalToSuperview().inset(UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20))
        }
        redBox.snp.makeConstraints { (make) in
            make.width.height.equalTo(100)
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
            make.centerX.equalToSuperview()
        }
        blueBox.snp.makeConstraints { (make) in
            make.width.equalTo(redBox.snp.width).multipliedBy(2)
            make.height.equalTo(redBox.snp.height)
            make.top.equalTo(redBox.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
        myDarkGrayButton.snp.makeConstraints { (make) in
            make.width.equalTo(200)
            make.height.equalTo(100)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
            make.centerX.equalToSuperview()
        }
        myDarkGrayButton.addTarget(self, action: #selector(moveGreenBoxDown), for: .touchUpInside)
        greenBox.snp.makeConstraints { (make) in
            make.width.height.equalTo(100)
            make.centerX.equalToSuperview()
            self.greenBoxTopConstraint = make.top.equalTo(blueBox.snp.bottom).offset(20).constraint
        }
    }
    
    var offset = 0
    
    @objc
    fileprivate func moveGreenBoxDown(){
        offset+=40
        print("ViewController - moveGreenBoxDown() called / offset: \(offset)")
        
        self.greenBoxTopConstraint?.update(offset: offset)
        UIViewPropertyAnimator(duration: 0.2, curve: .easeOut, animations: {self.view.layoutIfNeeded()}).startAnimation()
        
        
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
