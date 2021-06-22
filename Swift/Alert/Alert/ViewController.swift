//
//  ViewController.swift
//  Alert
//
//  Created by GSM02 on 2021/06/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblCurrrentTime: UILabel!
    @IBOutlet weak var lblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-mm-dd HH:mm EEE"
        
        lblPickerTime.text = "선택시간: " + formatter.string(from: datePickerView.date)
    }
    
}

