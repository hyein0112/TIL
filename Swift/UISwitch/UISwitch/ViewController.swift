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
    
    var switchFlag = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func `switch`(_ sender: UISwitch) {
        if switchFlag == false{
            view.backgroundColor = UIColor.yellow
            message.text = "ON"
            switchFlag = true
        }else{
            view.backgroundColor = UIColor.red
            message.text = "OFF"
            switchFlag = false
            
        }
    }
    
}

