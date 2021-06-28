//
//  ViewController.swift
//  UITableView
//
//  Created by GSM02 on 2021/06/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.numbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text : String = self.numbers[indexPath.row]
        cell.textLabel?.text = text
           return cell
    }
   
  
    @IBOutlet weak var navigationBar: UINavigationBar!

     

    

    @IBOutlet weak var tableView: UITableView!
    let cellIdentifier : String = "cell"
    let numbers : [String] = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten" ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.topItem?.title = "Numbers"
        // Do any additional setup after loading the view.
    }


}

