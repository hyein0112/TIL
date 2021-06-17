//
//  ViewController.swift
//  ColorButtonView
//
//  Created by GSM02 on 2021/06/17.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Red(_ sender: UIButton) {
        view.backgroundColor = UIColor.red
    }
    
    @IBAction func Blue(_ sender: UIButton) {
        view.backgroundColor = UIColor.blue
    }
    
    @IBAction func Yellow(_ sender: UIButton) {
        view.backgroundColor = UIColor.yellow
    }
    
    @IBAction func Black(_ sender: UIButton) {
        view.backgroundColor = UIColor.black
    }
}

