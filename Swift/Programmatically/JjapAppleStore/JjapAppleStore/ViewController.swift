//
//  ViewController.swift
//  JjapAppleStore
//
//  Created by GSM02 on 2021/10/16.
//

import UIKit
import SnapKit
import Then

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource{

    private let forYouLabel = UILabel().then {
        $0.text = "For You"
        $0.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 28)
        $0.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    private let profilePhoto = UIImageView().then{
        $0.image = UIImage(named: "img1.png")
    }
    
    private let profileLine = UIView().then {
        $0.backgroundColor = UIColor(red: 181/255, green: 181/255, blue: 181/255, alpha: 1)
    }
    
    private let informationLabel = UILabel().then {
        $0.text = "최신 정보입니다, 몽키 님"
        $0.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 20)
        $0.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    private let deliveryView = UIView().then {
        $0.backgroundColor = .white
        $0.layer.cornerRadius = 16
        $0.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1).cgColor
        $0.layer.shadowOpacity = 1
        $0.layer.shadowRadius = 20
        $0.layer.shadowOffset = CGSize(width: 0, height: -8)
    }
    
    private let deliveryImgView = UIImageView().then {
        $0.image = UIImage(named: "img2.png")
    }
    
    private let deliveryLabel = UILabel().then {
        $0.text = "주문하신 제품이 출고되었습니다."
        $0.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        $0.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 12)
    }
    
    private let deliveryInformationLabel = UILabel().then {
        $0.text = "1 제품, 배송 Oct 18"
        $0.textColor = UIColor(red: 181/255, green: 181/255, blue: 181/255, alpha: 1)

        $0.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 8)
    }
    
    private let deliveryLine = UIView().then {
        $0.backgroundColor = UIColor(red: 0.708, green: 0.708, blue: 0.708, alpha: 1)
    }
    
    private let deliveryButton = UIButton().then {
        $0.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        $0.tintColor = UIColor(red: 181/255, green: 181/255, blue: 181/255, alpha: 1)
    }
    
    private let deliveryStatus = UIView().then {
        $0.backgroundColor = UIColor(red: 181/255, green: 181/255, blue: 181/255, alpha: 1)
        $0.layer.cornerRadius = 4
    }
    
    private let currentDeliveryStatus = UIView().then {
        
        $0.backgroundColor = UIColor(red: 79/255, green: 209/255, blue: 77/255, alpha: 1)
        $0.layer.cornerRadius = 4
    }
    
    private let processingLabel = UILabel().then {
        $0.text = "처리 중"
        $0.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        $0.font = UIFont(name: "AppleSDGothicNeo-SemiBold", size: 6)
    }
    
    private let releaseLabel = UILabel().then {
        $0.text = "출고됨"
        $0.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        $0.font = UIFont(name: "AppleSDGothicNeo-SemiBold", size: 6)
    }
    
    private let deliveryCompleteLabel = UILabel().then {
        $0.text = "배송됨"
        $0.textColor = UIColor(red: 181/255, green: 181/255, blue: 181/255, alpha: 1)
        $0.font = UIFont(name: "AppleSDGothicNeo-SemiBold", size: 6)
    }
    
    private let suggestionLabel = UILabel().then {
        $0.text = "고객님을 위한 제안"
        $0.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)

        $0.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 14)
    }
    
    private let line1 = UIView().then {
        $0.backgroundColor = UIColor(red: 181/255, green: 181/255, blue: 181/255, alpha: 1)
    }

    private let equipmentLabel = UILabel().then {
        $0.text = "고객님의 기기"
        $0.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        $0.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 20)
    }
    
    private let learnMoreButton = UIButton().then {
        $0.setTitle("모두 보기", for: .normal)
        $0.setTitleColor(UIColor(red: 0, green: 0.4, blue: 1, alpha: 1),
                         for: .normal)
        $0.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-Light", size: 8)
    }
    
    private let tableView = UITableView().then {
        $0.separatorStyle = .none
    }
    
    private let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout()).then {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .clear
        $0.collectionViewLayout = layout
        $0.contentInset = UIEdgeInsets.init(top: 0, left: 17, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionViewCell", for: indexPath) as! CustomCollectionViewCell
        cell.imgView.image = UIImage(named: collectionViewImgList[indexPath.row])
        cell.titleLabel.text = collectionViewTitleLabelList[indexPath.row]
        cell.subLabel.text = collectionViewSubLabelList[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as! CustomTableViewCell
        cell.imgView.image = UIImage(named: tableViewImgList[indexPath.row])
        cell.titleLabel.text = tableViewTitleLabelList[indexPath.row]
        cell.subLabel.text = tableViewSubLabelList[indexPath.row]
        cell.subLabel.numberOfLines = lineOfSubLabel[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.height/14.5
    }
            
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
    
    private let collectionViewImgList: [String] = ["iPhone.png", "watch.png", "macBook.png", "iPad.png"]
    
    private let collectionViewTitleLabelList: [String] = ["몽키의 iPhone", "몽키의 Apple Watch", "몽키의 MacBook Pro", "몽키의 iPad"]
    
    private let collectionViewSubLabelList: [String] = ["iPhone 13 mini", "Apple Watch SE", "MacBook Pro 16″", "iPad Pro"]

    
    
    private let tableViewImgList: [String] = ["img3.png", "img4.png"]
    
    private let tableViewTitleLabelList: [String] = ["머리에 위치한 나사를 조여보세요.", "코드를 작성하세요."]
    
    private let tableViewSubLabelList: [String] = ["나사를 조이고 더 맑은 정신으로 과제를 해결해보세요.", "방식은 자유입니다. 기능 구현이 아닌 퍼블리싱을 완벽히 해내보세요.\n웅냥 웅냥 웅냥냥"]
    
    private let lineOfSubLabel: [Int] = [1,2]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tableViewSetting()
        collectionViewSetting()
        addView()
        location()
    }
    
//MARK: - collectionViewSetting
    func collectionViewSetting() {
        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    
//MARK: - tableViewSetting
    private func tableViewSetting() {
        tableView.dataSource = self
        tableView.delegate = self
                        
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifier)
        tableView.isScrollEnabled = false
    }
//MARK: - addView
    private func addView() {
        self.view.addSubview(forYouLabel)
        self.view.addSubview(profileLine)
        self.view.addSubview(informationLabel)
        self.view.addSubview(profilePhoto)
        self.view.addSubview(deliveryView)
        self.view.addSubview(deliveryImgView)
        self.view.addSubview(deliveryLabel)
        self.view.addSubview(deliveryInformationLabel)
        self.view.addSubview(deliveryLine)
        self.view.addSubview(deliveryButton)
        self.view.addSubview(deliveryStatus)
        self.view.addSubview(currentDeliveryStatus)
        self.view.addSubview(processingLabel)
        self.view.addSubview(releaseLabel)
        self.view.addSubview(deliveryCompleteLabel)
        self.view.addSubview(suggestionLabel)
        self.view.addSubview(line1)
        self.view.addSubview(equipmentLabel)
        self.view.addSubview(learnMoreButton)
        self.view.addSubview(tableView)
        self.view.addSubview(collectionView)
    }
    
//MARK: - location
    private func location() {
        forYouLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(self.view.frame.width/14.42)
            make.top.equalToSuperview().offset(self.view.frame.height/15.92)
        }
        
        profileLine.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(1.16)
            make.height.equalTo(self.view.frame.height/812)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(self.view.frame.height/9.55)
        }
        
        informationLabel.snp.makeConstraints { make in
            make.left.equalTo(forYouLabel)
            make.top.equalTo(forYouLabel.snp.bottom).offset(self.view.frame.height/54.13)
        }
        
        profilePhoto.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(11.63)
            make.left.equalTo(forYouLabel.snp.right).offset(self.view.frame.width/1.95)
            make.top.equalToSuperview().offset(self.view.frame.height/18.45)
        }
        
        deliveryView.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(1.22)
            make.height.equalToSuperview().dividedBy(7.73)
            make.centerX.equalToSuperview()
            make.top.equalTo(informationLabel.snp.bottom).offset(self.view.frame.height/33.83)
        }
        
        deliveryImgView.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(15.66)
            make.height.equalToSuperview().dividedBy(16.24)
            make.top.equalTo(deliveryView).offset(self.view.frame.height/101.5)
            make.left.equalTo(deliveryView).offset(self.view.frame.width/14.42)
        }
        
        deliveryLabel.snp.makeConstraints { make in
            make.top.equalTo(deliveryView).offset(self.view.frame.height/42.74)
            make.left.equalTo(deliveryView).offset(self.view.frame.width/4.36)
        }
        
        deliveryInformationLabel.snp.makeConstraints { make in
            make.top.equalTo(deliveryLabel.snp.bottom).offset(self.view.frame.height/135.33)
            make.left.equalTo(deliveryLabel)
        }
        
        deliveryLine.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(1.21)
            make.height.equalToSuperview().dividedBy(812)
            make.centerX.equalToSuperview()
            make.top.equalTo(deliveryImgView.snp.bottom).offset(self.view.frame.height/73.82)
        }
        
        deliveryButton.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(51.3)
            make.height.equalToSuperview().dividedBy(62.46)
            make.top.equalTo(deliveryView).offset(self.view.frame.height/24.61)
            make.right.equalTo(deliveryView).inset(self.view.frame.width/21.2)
        }
        
        deliveryStatus.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(1.42)
            make.height.equalToSuperview().dividedBy(180)
            make.top.equalTo(deliveryLine.snp.bottom).offset(self.view.frame.height/58)
            make.centerX.equalToSuperview()
        }
        
        currentDeliveryStatus.snp.makeConstraints { make in
            make.height.equalTo(deliveryStatus)
            make.width.equalToSuperview().dividedBy(2.84)
            make.top.left.equalTo(deliveryStatus)
        }
        
        processingLabel.snp.makeConstraints { make in
            make.top.equalTo(deliveryStatus.snp.bottom).offset(self.view.frame.height/203)
            make.left.equalTo(deliveryStatus)
        }
        
        releaseLabel.snp.makeConstraints { make in
            make.top.equalTo(processingLabel)
            make.left.equalTo(processingLabel.snp.right).offset(self.view.frame.width/3.57)
        }
        
        deliveryCompleteLabel.snp.makeConstraints { make in
            make.top.equalTo(releaseLabel)
            make.left.equalTo(releaseLabel.snp.right).offset(self.view.frame.width/3.41)
        }
        
        suggestionLabel.snp.makeConstraints { make in
            make.left.equalTo(informationLabel)
            make.top.equalTo(informationLabel.snp.bottom).offset(self.view.frame.height/4.75)
        }
        
        line1.snp.makeConstraints { make in
            make.width.height.centerX.equalTo(profileLine)
            make.top.equalTo(suggestionLabel.snp.bottom).offset(self.view.frame.height/101.5)
        }
        
        equipmentLabel.snp.makeConstraints { make in
            make.left.equalTo(suggestionLabel)
            make.top.equalTo(suggestionLabel.snp.bottom).offset(self.view.frame.height/4.95)
        }
        
        learnMoreButton.snp.makeConstraints { make in
            make.left.equalTo(equipmentLabel.snp.right).offset(self.view.frame.width/2.01)
            make.top.equalTo(suggestionLabel.snp.bottom).offset(self.view.frame.height/4.64)
        }
        
        tableView.snp.makeConstraints { make in
            make.height.equalTo((self.view.frame.height/14.5)*2)
            make.width.equalTo(self.view.frame.width/1.16)
            make.centerX.equalToSuperview()
            make.top.equalTo(line1.snp.bottom)
        }
        
        collectionView.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(3.52)
            make.width.equalTo((self.view.frame.width/2.34)*4)
            make.left.equalToSuperview().offset(self.view.frame.width/3.5)
            make.top.equalTo(equipmentLabel.snp.bottom).offset(self.view.frame.width/23.88)
        }
    }

}


//MARK: - Preview
#if DEBUG
import SwiftUI
struct ViewControllerRepresentable: UIViewControllerRepresentable {
    
func updateUIViewController(_ uiView: UIViewController,context: Context) {
        // leave this empty
}
    @available(iOS 13.0.0, *)
    func makeUIViewController(context: Context) -> UIViewController{
        ViewController()
    }
}
@available(iOS 13.0, *)
struct ViewControllerRepresentable_PreviewProvider: PreviewProvider {
    static var previews: some View {
        Group {
            ViewControllerRepresentable()
                .ignoresSafeArea()
                .previewDisplayName(/*@START_MENU_TOKEN@*/"Preview"/*@END_MENU_TOKEN@*/)
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
        }
        
    }
} #endif
