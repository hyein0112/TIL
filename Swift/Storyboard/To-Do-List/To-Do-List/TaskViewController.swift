//
//  TaskViewController.swift
//  To-Do-List
//
//  Created by GSM02 on 2021/08/06.
//

import UIKit

protocol didfinishDelete : class{
    func reload()
}
class TaskViewController: UIViewController {

    @IBOutlet var lable: UITextField!
    
    var task: String?
    var index : IndexPath?
    weak var delegate: didfinishDelete?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lable.text = task
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Delete", style: .done, target: self, action: #selector(deleteTask))
    }
    
    @objc func deleteTask(){
        
        guard let count = UserDefaults().value(forKey: "count") as? Int else{
            return
        }
        let newCount = count - 1
        let index = index?.row
        UserDefaults().setValue(newCount, forKey: "count")
        UserDefaults().removeObject(forKey: "task_\(index)")
        self.delegate?.reload()
    }


}
