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
    
    var titleLabel = UILabel.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        titleLabel.text = name
        titleLabel.frame = CGRect.zero
        view.addSubview(titleLabel)
        
        titleLabel.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
        // Do any additional setup after loading the view.
    }
    
    
    func setData(name: String, uploader: String, image: String, likeCount: Int) {
        self.name = name
        self.image = image
        self.uploader = uploader
        self.likeCount = likeCount
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
