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
    
    var empty : Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    @IBAction func submit(_ sender: Any) {
        emptyText()
        if empty == false {
            let alert = UIAlertController(title: "Submit", message: "제출 완료", preferredStyle: .alert)
                
            let action = UIAlertAction(title: "OK", style: .default, handler: .none)
                alert.addAction(action)
                present(alert, animated: true, completion: nil)
            clearText()
        }else {
            let errorAlert = UIAlertController(title: "Error", message: "ID와 PW를 모두 입력해주세요", preferredStyle: .alert)
                
            let action = UIAlertAction(title: "OK", style: .destructive, handler: .none)
                errorAlert.addAction(action)
                present(errorAlert, animated: true, completion: nil)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
         self.view.endEditing(true)
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
    func emptyText(){
        if id.text?.isEmpty == false && pw.text?.isEmpty == false{
            empty = false
        }else{
            empty = true
        }
    }
    
}


    


