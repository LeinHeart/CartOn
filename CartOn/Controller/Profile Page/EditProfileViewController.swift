//
//  EditProfileViewController.swift
//  CartOn
//
//  Created by Ricky Adi Kuncoro on 05/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit

class EditProfileViewController: UIViewController {

    let headerView = UIView.init()
    let profPic = UIImageView.init()
    let profPicEdit = UILabel.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Edit Profile"
        self.view.backgroundColor = .white
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: nil, action: nil)
    
        setup()
    }
    
    func setup() {
        headerView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 180)
        headerView.layer.borderColor = UIColor.black.cgColor
        headerView.layer.borderWidth = 0.3
        headerView.backgroundColor = .white
        
        profPic.frame = CGRect(x: 0, y: 0, width: 90, height: 90)
        profPic.image = UIImage(named: "profPic")
        profPic.contentMode = .scaleAspectFit
        profPic.layer.cornerRadius = self.profPic.frame.size.width / 2
        profPic.clipsToBounds = true
        
        profPicEdit.frame = CGRect.zero
        profPicEdit.text = "Change Profile Photo"
        profPicEdit.textColor = .orange
        profPicEdit.textAlignment = .center
        profPicEdit.font = UIFont(name: "Avenir-Heavy", size: 11)
        
        view.addSubview(headerView)
        headerView.setAnchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: view.frame.width, height: 180)
        
        headerView.addSubview(profPic)
        headerView.addSubview(profPicEdit)
        profPic.center = CGPoint(x: headerView.bounds.size.width / 2, y: headerView.bounds.size.height / 2 - 20)
        profPicEdit.setAnchor(top: profPic.bottomAnchor, left: headerView.leftAnchor, bottom: nil, right: headerView.rightAnchor, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)

        
        
        
        
    }

}
