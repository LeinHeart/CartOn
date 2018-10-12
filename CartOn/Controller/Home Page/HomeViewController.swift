//
//  HomeViewController.swift
//  CartOn
//
//  Created by Kristopher Chayadi on 01/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, SubscriptionDelegate, PopularDelegate{
    
    @IBOutlet weak var segmentedOutlet: UISegmentedControl!
    var isPopular:Bool = true
    var subsView: SubscriptionView!
    var popsView: PopularView!
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        subsView = SubscriptionView(frame: CGRect.zero)
        view.addSubview(subsView)
        subsView.vcDelegate = self
        subsView.setAnchor(top: segmentedOutlet.bottomAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 10, paddingLeft: 0, paddingBottom: 10, paddingRight: 0)

        popsView = PopularView(frame: CGRect.zero)
        view.addSubview(popsView)
        popsView.vcDelegate = self
        popsView.setAnchor(top: segmentedOutlet.bottomAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 10, paddingLeft: 0, paddingBottom: 10, paddingRight: 0)
        
        subsView.isHidden = true
        popsView.isHidden = false
    }

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
    
    func detail(name: String, uploader: String, image: String, likeCount: Int, description: String ,tag:[String]) {
        let dt = PostDetailViewController()
        dt.setData(name: name, uploader: uploader, image: image, likeCount: likeCount, description: description ,tag: tag )
        self.navigationController?.pushViewController(dt, animated: true)
        self.tabBarController?.tabBar.isHidden = true
    }
    
}




