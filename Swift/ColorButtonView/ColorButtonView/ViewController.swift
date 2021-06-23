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
    
    
    // red 버튼 설정
    @IBAction func red(_ sender: UIButton) {
        
        // 배경색이 red가 아닐 때 red로 바꿈
        if view.backgroundColor != UIColor.red {
                view.backgroundColor = UIColor.red
        }
           
        // 배경색이 red일 때 white로 바꿈
        else if view.backgroundColor == UIColor.red {
                view.backgroundColor = UIColor.white
            }
        }
    
    
    // blue 버튼 설정
    @IBAction func blue(_ sender: UIButton) {
    
        if view.backgroundColor != UIColor.blue {
            view.backgroundColor = UIColor.blue
        }
    
        else if view.backgroundColor == UIColor.blue {
                view.backgroundColor = UIColor.white
        }
    }
    
    
    // yellow 버튼 설정
    @IBAction func yellow(_ sender: UIButton) {
        
        if view.backgroundColor != UIColor.yellow {
                view.backgroundColor = UIColor.yellow
        }
        
        else if view.backgroundColor == UIColor.yellow {
                view.backgroundColor = UIColor.white
        }
    }
    
    
    // black 버튼 설정
    @IBAction func black(_ sender: UIButton) {
        
        if view.backgroundColor != UIColor.black {
                view.backgroundColor = UIColor.black
        }
        
        else if view.backgroundColor == UIColor.black {
                view.backgroundColor = UIColor.white
        }
    }

}
