//
//  HomeViewController.swift
//  CartOn
//
//  Created by Kristopher Chayadi on 01/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, SubscriptionDelegate, PopularDelegate{
    //,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
    
    @IBOutlet weak var segmentedOutlet: UISegmentedControl!
    
//    let popularView = UIView.init()
    var isPopular:Bool = true
    var subsView: SubscriptionView!
    var popsView: PopularView!
    
//    let collectionView: UICollectionView = {
//        let layout = UICollectionViewFlowLayout()
//        layout.minimumLineSpacing = 16
//        layout.scrollDirection = .vertical
//        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        cv.backgroundColor = .clear
//        return cv
//    }()
    
//    let topUploadCellId = "topUploadCellId"
//    let uploadCellId = "uploadCellId"
//    let subcriptionCellId = "subscriptionCellId"
    
//    let topUploadImageArray = ["image1","image2","image3","image4","image5"]
//    let uploadImageArray = ["upload1","upload2","upload3","upload4","upload5","upload6","upload7","upload8"]
//    let subscriptionImageArray=["sub1","sub2","sub3","sub4","sub5"]
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        subsView = SubscriptionView(frame: CGRect.zero)
        self.view.addSubview(subsView)
        subsView.vcDelegate = self
        subsView.setAnchor(top: segmentedOutlet.bottomAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 10, paddingLeft: 0, paddingBottom: 10, paddingRight: 0)

        popsView = PopularView(frame: CGRect.zero)
        self.view.addSubview(popsView)
        popsView.vcDelegate = self
        popsView.setAnchor(top: segmentedOutlet.bottomAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 10, paddingLeft: 0, paddingBottom: 10, paddingRight: 0)
        
        subsView.isHidden = true
        popsView.isHidden = false
        
        tabBarItem.title = "Testing"
        tabBarItem.image = #imageLiteral(resourceName: "like")
        
        
//        popularView.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
//        view.addSubview(popularView)
//        popularView.setAnchor(top: segmentedOutlet.bottomAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
//        isPopular = true
//
//
//
//        collectionView.delegate = self
//        collectionView.dataSource = self
//
//
//        collectionView.register(TopUploadViewCell.self, forCellWithReuseIdentifier: topUploadCellId)
//        collectionView.register(UploadViewCell.self, forCellWithReuseIdentifier: uploadCellId)
//        collectionView.register(SubscriptionViewCell.self, forCellWithReuseIdentifier: subcriptionCellId)
//
//        popularView.addSubview(collectionView)
//        collectionView.setAnchor(top: popularView.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 5, paddingRight: 0)
        // Do any additional setup after loading the view.
    }
    
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 2
//    }
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        if isPopular == true{
//            if section == 1 {
//                return uploadImageArray.count
//            }
//            else {return 1}
//        }
//        else{
//            return subscriptionImageArray.count
//        }
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        if isPopular == true{
//            if indexPath.section == 1{
//                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: uploadCellId, for: indexPath) as! UploadViewCell
//                cell.uploadImages = uploadImageArray[indexPath.item]
//                return cell
//            }
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: topUploadCellId, for: indexPath) as! TopUploadViewCell
//            cell.images = topUploadImageArray
//            cell.backgroundColor = .orange
//            return cell
//        }
//        else {
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: subcriptionCellId, for: indexPath) as! SubscriptionViewCell
//            cell.subscriptionNames = subscriptionImageArray[indexPath.item]
//            return cell
//        }
//    }
//
//
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        if isPopular == true{
//            if indexPath.section == 1 {
//                return CGSize(width: (view.frame.width / 2) - 20 , height: (view.frame.width / 2) * 1.25)
//            }
//            return CGSize(width: view.frame.width, height: (view.frame.width / 2 ) * 1.25 + 55) //375 842
//        }
//        else {
//            return CGSize(width: (view.frame.width / 2) - 20 , height: (view.frame.width / 2) * 1.25)
//        }
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        if isPopular == true {
//            if section == 1 {
//                return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
//            }
//            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
//        }
//        else {
//            return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
//        }
    
    //}

    @IBAction func segmentedTapped(_ sender: Any) {
        let getIndex = segmentedOutlet.selectedSegmentIndex
        
        switch getIndex {
        case 0:
            popsView.isHidden = false
            subsView.isHidden = true
            print("PopsView")
        case 1:
            popsView.isHidden = true
            subsView.isHidden = false
            print("SubsView")
        default:
            print("kosong")
        }
    }
    
    func detail(name: String, uploader: String, image: String, likeCount: Int) {
        let dt = PostDetailViewController()
        dt.setData(name: name, uploader: uploader, image: image, likeCount: likeCount)
        self.navigationController?.pushViewController(dt, animated: true)
        self.tabBarController?.tabBar.isHidden = true
    }
    
}




