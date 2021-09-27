//
//  ViewController.swift
//  COVID Tracker
//
//  Created by GSM02 on 2021/09/23.
//

import UIKit

/// Data of covid cases
class ViewController: UIViewController, UITableViewDataSource {
    
    private let tableView: UITableView = {
        let table = UITableView(frame: .zero)
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    private var dayData: [DayData] = [] {
        didset{
            DispatchQueue.main.async {
                tableView.reloadData()
            }
        }
    }

    private var scope: APICaller.DataScope = .national1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Covid Cases"
        configureTable()
        createFilterButton()
        fatchData()
    }
    
    private func configureTable() {
        view.addSubview(tableView)
        tableView.dataSource = self
    }
    
    private func fatchData() {
        APICaller.shared.getCovidData(for: scope) {result in
            switch result{
            case .success(let dayData):
                self.dayData = dayData
            case .failure(let error):
                print(error)
            }
        }
    }
    
    private func createFilterButton() {
        let buttonTitle: String = {
            switch scope {
            case .national1: return "National"
            case .state(let state): return state.name
            }
        }()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: buttonTitle, style: .done, target: self, action: #selector(didTapFilter))
    }

    @objc private func didTapFilter() {
        let vc = FilterViewController()
        vc.completion = { [weak self] state in
            self?.scope = .state(state)
            self?.fatchData()
            self?.createFilterButton()
        }
        let navVC = UINavigationController(rootViewController: vc)
        present(navVC, animated: true)
    }
    //MARK: -Table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dayData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = dayData[indexPath.row]
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = createText(with: data)
        return cell
    }
    private func createText(with data: DayData) -> String? {
        
    }
}

