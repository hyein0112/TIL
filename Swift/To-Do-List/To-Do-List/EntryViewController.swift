//
//  EntryViewController.swift
//  To-Do-List
//
//  Created by GSM02 on 2021/08/06.
//

import UIKit

class EntryViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var field: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveTask()
        return true
    }

    @IBAction func saveTask(){
        
    }
}
