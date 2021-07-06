//
//  ViewController.swift
//  UISwitch
//
//  Created by GSM02 on 2021/07/05.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var UISwitch: UISwitch!
    @IBOutlet weak var message: UILabel!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func `switch`(_ sender: UISwitch) {
        if sender.isOn{
            view.backgroundColor = UIColor.yellow
            message.text = "ON"
           
        }else{
            view.backgroundColor = UIColor.red
            message.text = "OFF"
            
            
        }
    }
    
}

