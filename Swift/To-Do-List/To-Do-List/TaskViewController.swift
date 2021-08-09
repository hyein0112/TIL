//
//  TaskViewController.swift
//  To-Do-List
//
//  Created by GSM02 on 2021/08/06.
//

import UIKit

class TaskViewController: UIViewController {

    @IBOutlet var lable: UILabel!
    
    var task: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lable.text = task
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Delete", style: .done, target: self, action: #selector(deleteTask))
    }
    
    @objc func deleteTask(){
//        let newCount = count - 1
//
//        UserDefaults().setValue(newCount, forKey: "count")
//        UserDefaults().setValue(nil, forKey: "task_\(currentPosition)")
    }


}
