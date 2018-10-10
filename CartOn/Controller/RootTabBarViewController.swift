//
//  RootTabBarViewController.swift
//  CartOn
//
//  Created by Ricky Adi Kuncoro on 10/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit

class RootTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        guard let myTabBarItems = tabBar.items else {return}
        myTabBarItems[0].image = #imageLiteral(resourceName: "like")
        myTabBarItems[0].title = "Homeis"
        
        
        
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
