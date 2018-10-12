//
//  PostDetailImagePreviewViewController.swift
//  CartOn
//
//  Created by Kristopher Chayadi on 12/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit

class PostDetailImagePreviewViewController: UIViewController {
    
    var imageDetail : UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.frame = CGRect.zero
        return iv
    }()
    
    var receivedImage : UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        let tapRecog = UITapGestureRecognizer(target: self, action: #selector(tapped))
        swipeGesture.direction = .down
        imageDetail.isUserInteractionEnabled = true
        imageDetail.addGestureRecognizer(tapRecog)
        imageDetail.image = receivedImage
        imageDetail.addGestureRecognizer(swipeGesture)
        view.addSubview(imageDetail)
        imageDetail.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }
    
    @objc func swiped(){
        print("Ke Swipe")
        dismiss(animated: true, completion: nil)
    }
    
    @objc func tapped(){
        print("Tapped")
        dismiss(animated: true, completion: nil)
    }
}
