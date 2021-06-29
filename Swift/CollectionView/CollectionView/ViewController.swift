//
//  ViewController.swift
//  CollectionView
//
//  Created by GSM02 on 2021/06/28.
//

import UIKit


class ViewController:
    
//  필수 프로토콜
    UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30 // 셀의 개수
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
//      재사용 가능한 셀이 있으면 재사용, 아니면 새로 생성
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? UICollectionViewCell else {
                    return UICollectionViewCell()
                }
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
