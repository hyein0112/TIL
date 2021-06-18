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
    
    
    var redFlag = false, blueFlag = false, yellowFlag = false, blackFlag = false
    
    

    @IBAction func red(_ sender: UIButton) {
        
        if view.backgroundColor != UIColor.red {
            
            
            if redFlag == false {
                view.backgroundColor = UIColor.red
                redFlag = true
            }
            
            else if redFlag == true {
                view.backgroundColor = UIColor.red
                redFlag = false
            }
            
        }
        
        else if view.backgroundColor == UIColor.red {
            
            if redFlag == false{
                view.backgroundColor = UIColor.white
                redFlag = true
            }
            
            else if redFlag == true {
                view.backgroundColor = UIColor.white
                redFlag = false
            }
            
        }
    }
    
    
    @IBAction func blue(_ sender: UIButton) {
        if view.backgroundColor != UIColor.blue {
            
            
            if blueFlag == false {
                view.backgroundColor = UIColor.blue
                blueFlag = true
            }
            
            else if blueFlag == true {
                view.backgroundColor = UIColor.blue
                blueFlag = false
            }
            
        }
        
        else if view.backgroundColor == UIColor.blue {
            
            if blueFlag == false{
                view.backgroundColor = UIColor.white
                blueFlag = true
            }
            
            else if blueFlag == true {
                view.backgroundColor = UIColor.white
                blueFlag = false
            }
            
        }
    }
    
    @IBAction func yellow(_ sender: UIButton) {
        if view.backgroundColor != UIColor.yellow {
            
            
            if yellowFlag == false {
                view.backgroundColor = UIColor.yellow
                yellowFlag = true
            }
            
            else if yellowFlag == true {
                view.backgroundColor = UIColor.yellow
                yellowFlag = false
            }
            
        }
        
        else if view.backgroundColor == UIColor.yellow {
            
            if yellowFlag == false{
                view.backgroundColor = UIColor.white
                yellowFlag = true
            }
            
            else if yellowFlag == true {
                view.backgroundColor = UIColor.white
                yellowFlag = false
            }
            
        }
    }
    
    @IBAction func black(_ sender: UIButton) {
        if view.backgroundColor != UIColor.black {
            
            
            if blackFlag == false {
                view.backgroundColor = UIColor.black
                blackFlag = true
            }
            
            else if blackFlag == true {
                view.backgroundColor = UIColor.black
                blackFlag = false
            }
            
        }
        
        else if view.backgroundColor == UIColor.black {
            
            if blackFlag == false{
                view.backgroundColor = UIColor.white
                blackFlag = true
            }
            
            else if blackFlag == true {
                view.backgroundColor = UIColor.white
                blackFlag = false
            }
            
        }
    }

}
