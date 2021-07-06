//
//  ViewController.swift
//  TextField
//
//  Created by GSM02 on 2021/07/06.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var memo: UITextView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var id: UITextField!
    @IBOutlet weak var pw: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    
    @IBAction func submit(_ sender: Any) {
        
        let alert = UIAlertController(title: "Submit", message: "제출 완료", preferredStyle: .alert)
                
        let action = UIAlertAction(title: "OK", style: .default, handler: .none)
                alert.addAction(action)
                present(alert, animated: true, completion: nil)
        clearText()
            }
    
    func configureUI(){
        memo.layer.borderWidth = 1
        memo.layer.borderColor = UIColor.black.cgColor
        pw.isSecureTextEntry = true
    }
    func clearText(){
        id.text = ""
        pw.text = ""
        memo.text = ""
    }
    
}


    


