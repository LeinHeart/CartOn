//
//  PostDetailViewController.swift
//  CartOn
//
//  Created by Kristopher Chayadi on 08/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit

class PostDetailViewController: UIViewController {

    var name = String.init()
    var image = String.init()
    var uploader = String.init()
    var likeCount = Int.init()
    
    //Mark Image Title
    var titleLabel :UILabel = {
        let tl = UILabel()
        tl.font = UIFont(name: "Avenir-medium", size: 18)
        tl.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        return tl
    }()
    //Mark UIImage
    let imageView :UIImageView = {
        let iv = UIImageView()
//        iv.frame = CGRect(x: 0, y: 64, width: 0, height: 0)
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        
        return iv
    }()
    
    //Mark Uploader Name
    var uploaderName :UILabel = {
        let tl = UILabel()
        tl.font = UIFont(name: "Avenir-medium", size: 14)
        tl.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        tl.textColor = .blue
        return tl
    }()
    
    //Mark Like
    var likeLabel :UILabel = {
        let tl = UILabel()
        tl.font = UIFont(name: "Avenir-medium", size: 14)
        tl.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        return tl
    }()
    
    var likeIcon :UIImageView = {
        let iv = UIImageView()
        iv.frame = CGRect(x: 0, y: 0, width: 18, height: 18)
        iv.image = UIImage(named: "like")
        return iv
    }()
    
    //Mark Time Uploaded
    var timeIcon :UIImageView = {
        let iv = UIImageView()
        iv.frame = CGRect(x: 0, y: 0, width: 18, height: 18)
        iv.image = UIImage(named: "like")
        return iv
    }()
    var timeStamp :UILabel = {
        let tl = UILabel()
        tl.font = UIFont(name: "Avenir-medium", size: 14)
        tl.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        return tl
    }()
    
    
    //Mark : Saw
    var sawIcon :UIImageView = {
        let iv = UIImageView()
        iv.frame = CGRect(x: 0, y: 0, width: 18, height: 18)
        iv.image = UIImage(named: "like")
        return iv
    }()
    var sawCount :UILabel = {
        let tl = UILabel()
        tl.font = UIFont(name: "Avenir-medium", size: 14)
        tl.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        return tl
    }()
    
    
    //Mark : Tags
    var tagsIcon :UIImageView = {
        let iv = UIImageView()
        iv.frame = CGRect(x: 0, y: 0, width: 18, height: 18)
        iv.image = UIImage(named: "like")
        return iv
    }()
    
    var tagsCount :UILabel = {
        let tl = UILabel()
        tl.font = UIFont(name: "Avenir-medium", size: 14)
        tl.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        return tl
    }()
    
    //Mark : Description
    var descIcon :UIImageView = {
        let iv = UIImageView()
        iv.frame = CGRect(x: 0, y: 0, width: 18, height: 18)
        iv.image = UIImage(named: "like")
        return iv
    }()
    
    var descLabel :UILabel = {
        let tl = UILabel()
        tl.font = UIFont(name: "Avenir-medium", size: 14)
        tl.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        return tl
    }()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapRegoc = UITapGestureRecognizer(target: self, action: #selector(tapDetected))
        
        likeIcon.isUserInteractionEnabled = true
        likeIcon.addGestureRecognizer(tapRegoc)
        
        DispatchQueue.main.async {
            self.likeLabel.text = String(self.likeCount)
        }
        //self.extendedLayoutIncludesOpaqueBars = true
        //self.edgesForExtendedLayout = []
        
        view.backgroundColor = .white
        
        titleLabel.text = name
        timeStamp.text = "Uploaded 7 minutes ago by "
        sawCount.text = "250"
        //tagsCount.text = "Memes,Cat,Bear,Animal,Cute"
//        descLabel.text = "Ini lucu loh :)"
        
        
        let imageTampung = UIImage(named: image)
        imageView.image = imageTampung
        imageView.backgroundColor = .white
        
       
//            let ratio = imageTampung.size.width / imageTampung.size.height
//            if view.frame.width > view.frame.height{
//                let newHeight = view.frame.width / ratio
//                imageView.frame.size = CGSize(width: view.frame.width, height: newHeight)
//            }
//            else{
//                let newWidth = view.frame.height * ratio
//                imageView.frame.size = CGSize(width: newWidth, height: view.frame.height)
//            }
            
        
        
        uploaderName.text = uploader
        likeLabel.text = String(likeCount)
        
        view.addSubview(titleLabel)
        view.addSubview(imageView)
        view.addSubview(likeIcon)
        view.addSubview(uploaderName)
        view.addSubview(likeLabel)
        view.addSubview(timeIcon)
        view.addSubview(timeStamp)
        view.addSubview(sawIcon)
        view.addSubview(sawCount)
        view.addSubview(tagsIcon)
        view.addSubview(tagsCount)
        view.addSubview(descIcon)
        view.addSubview(descLabel)
        
        imageView.setAnchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0,width : view.frame.width, height: (imageTampung!.size.height) * (view.frame.width / (imageTampung?.size.height)!))
        titleLabel.setAnchor(top: imageView.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 10, paddingLeft: 18, paddingBottom: 0, paddingRight: 0)
        timeIcon.setAnchor(top: titleLabel.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 18, paddingBottom: 0, paddingRight: 0)
        timeStamp.setAnchor(top: titleLabel.bottomAnchor, left: timeIcon.leftAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 43, paddingBottom: 0, paddingRight: 0)
        uploaderName.setAnchor(top: titleLabel.bottomAnchor, left: timeStamp.rightAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 5, paddingBottom: 0, paddingRight: 0)
        likeIcon.setAnchor(top: timeIcon.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 18, paddingBottom: 0, paddingRight: 0)
        likeLabel.setAnchor(top: timeIcon.bottomAnchor, left: likeIcon.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 20, paddingLeft: 43, paddingBottom: 0, paddingRight: 0)
        sawIcon.setAnchor(top: likeIcon.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 18, paddingBottom: 0, paddingRight: 0)
        sawCount.setAnchor(top: likeIcon.bottomAnchor, left: sawIcon.leftAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 43, paddingBottom: 0, paddingRight: 0)
        tagsIcon.setAnchor(top: sawIcon.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 18, paddingBottom: 0, paddingRight: 0)
        tagsCount.setAnchor(top: sawIcon.bottomAnchor, left: tagsIcon.leftAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 43, paddingBottom: 0, paddingRight: 0)
        descIcon.setAnchor(top: tagsIcon.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 18, paddingBottom: 0, paddingRight: 0)
        descLabel.setAnchor(top: tagsIcon.bottomAnchor, left: descIcon.leftAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 43, paddingBottom: 0, paddingRight: 0)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        DispatchQueue.main.async {
            self.likeLabel.text = String(self.likeCount)
        }
    }
    
    
    func setData(name: String, uploader: String, image: String, likeCount: Int, description: String ,tag:[String]) {
        self.name = name
        self.image = image
        self.uploader = uploader
        self.likeCount = likeCount
        self.descLabel.text = description
        var tampung = String()
        for i in tag {
            tampung += i
            if i != tag.last {
                tampung = tampung + ", "
            }
        }
        self.tagsCount.text = tampung
    }
    
    @objc func tapDetected(){
        if likeIcon.backgroundColor == nil{
            likeIcon.backgroundColor = .orange
                self.likeCount += 1
            
            DispatchQueue.main.async {
                self.likeLabel.text = String(self.likeCount)
            }
            print(likeCount)
        }
        else{
            likeIcon.backgroundColor = nil
                self.likeCount -= 1
            
            DispatchQueue.main.async {
                self.likeLabel.text = String(self.likeCount)
            }
            print(likeCount)
        }
    }
}
