//
//  CustomTableViewCell.swift
//  JjapAppleStore
//
//  Created by GSM02 on 2021/10/18.
//

import UIKit
import SnapKit
import Then

class CustomTableViewCell: UITableViewCell {
    
    static let identifier = "CustomCell"

    var cellView = UIView().then {
        $0.backgroundColor = .white
    }
    
    var imgView = UIImageView().then {
        $0.image = UIImage(named: "img3.png")
    }
    
    var titleLabel = UILabel().then {
        $0.text = "머리에 위치한 나사를 조여보세요."
        $0.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        $0.font = UIFont(name: "AppleSDGothicNeo-SemiBold", size: 9)
    }
    
    var subLabel = UILabel().then {
        $0.text = "나사를 조이고 더 맑은 정신으로 과제를 해결해보세요."
        $0.textColor = UIColor(red: 0.708, green: 0.708, blue: 0.708, alpha: 1)
        $0.font = UIFont(name: "AppleSDGothicNeo-Light", size: 6)
    }
    
    var nextButton = UIButton().then {
        $0.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        $0.tintColor = UIColor(red: 181/255, green: 181/255, blue: 181/255, alpha: 1)
    }
    
    var line = UIView().then {
        $0.backgroundColor = UIColor(red: 0.708, green: 0.708, blue: 0.708, alpha: 1)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            configureUI()
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            configureUI()
        }
        
        override func awakeFromNib() {
            super.awakeFromNib()
        }
        
        func configureUI(){
            contentView.addSubview(cellView)
            cellView.addSubview(imgView)
            cellView.addSubview(titleLabel)
            cellView.addSubview(subLabel)
            cellView.addSubview(nextButton)
            cellView.addSubview(line)
            
            cellView.snp.makeConstraints { make in
                make.top.equalToSuperview()
                make.left.equalToSuperview()
                make.bottom.equalToSuperview()
                make.width.equalToSuperview()
            }
            
            imgView.snp.makeConstraints { make in
                make.width.equalToSuperview().dividedBy(3)
                make.left.equalToSuperview().offset(16)
                make.centerY.equalToSuperview()
                make.height.equalToSuperview().dividedBy(2.8)
            }
            
            titleLabel.snp.makeConstraints { make in
                make.top.equalToSuperview().offset(18)
                make.left.equalTo(imgView.snp.right).offset(35)
            }
            
            subLabel.snp.makeConstraints { make in
                make.top.equalTo(titleLabel.snp.bottom).offset(4)
                make.left.equalTo(titleLabel)
            }
            
            nextButton.snp.makeConstraints { make in
                make.width.equalToSuperview().dividedBy(57.3)
                make.height.equalToSuperview().dividedBy(5.6)
                make.left.equalTo(subLabel.snp.right).offset(108)
                make.centerY.equalToSuperview()
            }
            
            line.snp.makeConstraints { make in
                make.width.equalToSuperview()
                make.height.equalToSuperview().dividedBy(1)
                make.centerX.equalToSuperview()
                make.bottom.equalToSuperview()
            }
        }

    
}
