//
//  FilterViewController.swift
//  COVID Tracker
//
//  Created by GSM02 on 2021/09/23.
//

import UIKit

class FilterViewController: UIViewController {
    public var completion: ((State) -> Void)?
    
    private let tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Select State"
        
    }

}
