//
//  ViewController.swift
//  then_tutorial
//
//  Created by GSM02 on 2021/08/17.
//

import UIKit
import Then


class ViewController: UIViewController {
    
//MARK: - UI
    lazy var myLabel: UILabel = {
        let label = UILabel()
        label.text = "Label"
        label.font = UIFont.boldSystemFont(ofSize: 100)
        label.textColor = .blue
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
//    lazy var mySubLabel = UILabel().then {
//        $0.text = "This is using Then"
//        $0.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
//        $0.textColor = UIColor.black
//        $0.translatesAutoresizingMaskIntoConstraints = false
//    }
//
    lazy var mySubLabel = UILabel().then { (myLabel : UILabel) in
        myLabel.text = "This is using Then"
        myLabel.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        myLabel.textColor = UIColor.red
        myLabel.translatesAutoresizingMaskIntoConstraints = false
    }

    override func loadView() {
        super.loadView()
        print(#fileID, #function, #line, "")
        configureUI()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#fileID, #function, #line, "")
    }

    fileprivate func configureUI(){
        print(#fileID, #function, #line, "")
        
        self.view.addSubview(myLabel)
        NSLayoutConstraint.activate([
            myLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            myLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        ])
               
        self.view.addSubview(mySubLabel)
        NSLayoutConstraint.activate([
            mySubLabel.topAnchor.constraint(equalTo: myLabel.bottomAnchor, constant: 20),
            mySubLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
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
