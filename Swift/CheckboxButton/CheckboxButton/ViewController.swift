//
//  ViewController.swift
//  CheckboxButton
//
//  Created by GSM02 on 2021/06/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var checkbox1: UIButton!
    @IBOutlet weak var checkbox2: UIButton!
    @IBOutlet weak var checkbox3: UIButton!
    
    var flag1 = false, flag2 = false, flag3=false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func isChecked1(_ sender: UIButton) {
//        checkbox1.setBackgroundImage(UIImage(named: "EZY_CheckedBox"), for: .normal)
        if flag1 == false{
            checkbox1.setBackgroundImage(UIImage(named: "EZY_CheckedBox"), for: .normal)
            flag1 = true
        }else if flag1 == true{
            checkbox1.setBackgroundImage(UIImage(named: "EZY_UncheckedBox"), for: .normal)
            flag1 = false
        }
    }
    
    @IBAction func isChecked2(_ sender: UIButton) {
//        checkbox2.setBackgroundImage(UIImage(named: "EZY_CheckedBox"), for: .normal)
        if flag2 == false{
            checkbox2.setBackgroundImage(UIImage(named: "EZY_CheckedBox"), for: .normal)
            flag2 = true
        }else if flag2 == true{
            checkbox2.setBackgroundImage(UIImage(named: "EZY_UncheckedBox"), for: .normal)
            flag2 = false
        }
    }
    @IBAction func isChecked3(_ sender: UIButton) {
//        checkbox3.setBackgroundImage(UIImage(named: "EZY_CheckedBox"), for: .normal)
        if flag3 == false{
            checkbox3.setBackgroundImage(UIImage(named: "EZY_CheckedBox"), for: .normal)
            flag3 = true
        }else if flag3 == true{
            checkbox3.setBackgroundImage(UIImage(named: "EZY_UncheckedBox"), for: .normal)
            flag3 = false
        }
    }
}

