//
//  CollectionTableViewCell.swift
//  Carousel
//
//  Created by GSM02 on 2021/09/30.
//

import UIKit

struct CollectionTableViewCellViewModel {
    let viewModels: [TileCollectionViewCellViewModel]
}

class CollectionTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    
    static let identifier = "CollectionTableViewCell"
    
    private var viewModels: [TileCollectionViewCellViewModel] = []
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 2, left: 2, bottom: 2, right: 2)
        let collectionView = UICollectionView(frame: .zero,
                                              collectionViewLayout: layout)
        collectionView.register(TileCollectionViewCell.self, forCellWithReuseIdentifier: TileCollectionViewCell.identifier)
        
        collectionView.backgroundColor = .systemBackground
        return collectionView
    }()
    
    //MARK: - init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemBackground
        contentView.addSubview(collectionView)
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    //MARK: - Layout
    override func layoutSubviews() {
        super.layoutSubviews()
        collectionView.frame = contentView.bounds
    }
    
    //MARK: - CollectionView
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TileCollectionViewCell.identifier, for: indexPath)
            as? TileCollectionViewCell else {
            fatalError()
        }
        cell.configure(with: viewModels[indexPath.row])
        return cell 
    }
    
    func configure(with viewModel: TileCollectionViewCellViewModel) {
        self.viewModels = viewModel.viewModels
        collectionView.reloadData()
    }
}
