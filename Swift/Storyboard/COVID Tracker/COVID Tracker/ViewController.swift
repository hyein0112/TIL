//
//  ViewController.swift
//  COVID Tracker
//
//  Created by GSM02 on 2021/09/23.
//

import UIKit

/// Data of covid cases
class ViewController: UIViewController {

    private var scope: APICaller.DataScope = .national1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Covid Cases"
        createFilterButton()
        fatchData()
    }
    
    private func fatchData() {
        APICaller.shared.getCovidData(for: scope) {result in
            switch result{
            case .success(let data):
                break
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
}

