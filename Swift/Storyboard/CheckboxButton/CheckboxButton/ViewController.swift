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
    @IBOutlet weak var allCheckbox: UIButton!
    
    var flag1 = false, flag2 = false, flag3=false, allFlag = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func isChecked1(_ sender: UIButton) {
//        checkbox1.setBackgroundImage(UIImage(named: "EZY_CheckedBox"), for: .normal)
        if flag1 == false{
            checkbox1.setBackgroundImage(UIImage(named: "EZY_CheckedBox"), for: .normal)
            flag1 = true
            if flag2 == true && flag3 == true{
                allCheckbox.setBackgroundImage(UIImage(named: "EZY_CheckedBox"), for: .normal)
                allFlag = true
            }
        }else if flag1 == true{
            checkbox1.setBackgroundImage(UIImage(named: "EZY_UncheckedBox"), for: .normal)
            allCheckbox.setBackgroundImage(UIImage(named: "EZY_UncheckedBox"), for: .normal)
            flag1 = false
            allFlag = false
        }
    }
    
    @IBAction func isChecked2(_ sender: UIButton) {
//        checkbox2.setBackgroundImage(UIImage(named: "EZY_CheckedBox"), for: .normal)
        if flag2 == false{
            checkbox2.setBackgroundImage(UIImage(named: "EZY_CheckedBox"), for: .normal)
            flag2 = true
            if flag1 == true && flag3 == true{
                allCheckbox.setBackgroundImage(UIImage(named: "EZY_CheckedBox"), for: .normal)
                allFlag = true
            }
        }else if flag2 == true{
            checkbox2.setBackgroundImage(UIImage(named: "EZY_UncheckedBox"), for: .normal)
            allCheckbox.setBackgroundImage(UIImage(named: "EZY_UncheckedBox"), for: .normal)
            flag2 = false
            allFlag = false
        }
    }
    @IBAction func isChecked3(_ sender: UIButton) {
//        checkbox3.setBackgroundImage(UIImage(named: "EZY_CheckedBox"), for: .normal)
        if flag3 == false{
            checkbox3.setBackgroundImage(UIImage(named: "EZY_CheckedBox"), for: .normal)
            flag3 = true
            if flag1 == true && flag2 == true{
                allCheckbox.setBackgroundImage(UIImage(named: "EZY_CheckedBox"), for: .normal)
                allFlag = true
            }
        }else if flag3 == true{
            checkbox3.setBackgroundImage(UIImage(named: "EZY_UncheckedBox"), for: .normal)
            allCheckbox.setBackgroundImage(UIImage(named: "EZY_UncheckedBox"), for: .normal)
            allFlag = false
            flag3 = false
        }
    }
    @IBAction func isAllChecked(_ sender: UIButton) {
        if allFlag == false{
            allCheckbox.setBackgroundImage(UIImage(named: "EZY_CheckedBox"), for: .normal)
            checkbox1.setBackgroundImage(UIImage(named: "EZY_CheckedBox"), for: .normal)
            checkbox2.setBackgroundImage(UIImage(named: "EZY_CheckedBox"), for: .normal)
            checkbox3.setBackgroundImage(UIImage(named: "EZY_CheckedBox"), for: .normal)
            allFlag = true
            flag1 = true
            flag2 = true
            flag3 = true
        }else if allFlag == true{
            allCheckbox.setBackgroundImage(UIImage(named: "EZY_UncheckedBox"), for: .normal)
            checkbox1.setBackgroundImage(UIImage(named: "EZY_UncheckedBox"), for: .normal)
            checkbox2.setBackgroundImage(UIImage(named: "EZY_UncheckedBox"), for: .normal)
            checkbox3.setBackgroundImage(UIImage(named: "EZY_UncheckedBox"), for: .normal)
            allFlag = false
            flag1 = false
            flag2 = false
            flag3 = false
        }
    }
    
}

