//
//  CustomCollectionViewCell.swift
//  JjapAppleStore
//
//  Created by GSM02 on 2021/10/21.
//

import UIKit
import SnapKit
import Then

class CustomCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "\(CustomCollectionViewCell.self)"
    
    var imgView = UIImageView().then {
        $0.image = UIImage(named: "iPhone.png")
    }
    
    var titleLabel = UILabel().then {
        $0.text = "몽키의 iPhone"
        $0.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        $0.font = UIFont(name: "AppleSDGothicNeo-SemiBold", size: 12)
    }
    
    var subLabel = UILabel().then {
        $0.text = "iPhone 13 mini"
        $0.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        $0.font = UIFont(name: "AppleSDGothicNeo-Light", size: 9)
    }
    
    var informationButton = UIButton().then {
        $0.setTitle("기기 세부 정보", for: .normal)
        $0.setTitleColor(UIColor(red: 0, green: 102/255, blue: 255, alpha: 1), for: .normal)
        $0.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-SemiBold", size: 10)
        $0.backgroundColor = UIColor(red: 234/255, green: 234/255, blue: 234/255, alpha: 1)
        $0.layer.cornerRadius = 20
    }
    
    var shoppingButton = UIButton().then {
        $0.setTitle("액세서리 등을 쇼핑하기", for: .normal)
        $0.setTitleColor(UIColor(red: 0, green: 102/255, blue: 255, alpha: 1), for: .normal)
        $0.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-Light", size: 10)
    }
    
    override init(frame: CGRect) {
            super.init(frame: frame)
            configureUI()
        }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureUI()
    }
    
    func configureUI() {
        contentView.addSubview(imgView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(subLabel)
        contentView.addSubview(informationButton)
        contentView.addSubview(shoppingButton)
        
        imgView.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(2.34)
            make.height.equalToSuperview().dividedBy(6.92)
            
        }
        
        titleLabel.snp.makeConstraints { make in
            
        }
        
        subLabel.snp.makeConstraints { make in
            
        }
        
        informationButton.snp.makeConstraints { make in
            
        }
        
        shoppingButton.snp.makeConstraints { make in
            
        }
    }
    
}
