//
//  ViewController.swift
//  Carousel
//
//  Created by GSM02 on 2021/09/30.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: CollectionTableViewCell.identifier)
        return table
    }()
    
    private let viewModels: [CollectionTableViewCellViewModel] = [
        CollectionTableViewCellViewModel(
            viewModels:[
                TileCollectionViewCellViewModel(name: "Apple", backgroundColor: .systemBlue),
                TileCollectionViewCellViewModel(name: "Google", backgroundColor: .systemRed),
                TileCollectionViewCellViewModel(name: "Nvidia", backgroundColor: .systemYellow),
                TileCollectionViewCellViewModel(name: "Intel", backgroundColor: .systemPink),
                TileCollectionViewCellViewModel(name: "Facebook", backgroundColor: .systemGreen),
                TileCollectionViewCellViewModel(name: "Microsoft", backgroundColor: .systemOrange)
            ]
        )
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let viewModel = viewModels[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: CollectionTableViewCell.identifier,
            for: indexPath
        ) as? CollectionTableViewCell else {
            fatalError()
        }
        cell.configure(with: viewModel)
        return cell
    }
    

}

