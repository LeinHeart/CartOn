//
//  TabBarViewController.swift
//  CartOn
//
//  Created by Eric Victor on 04/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit


protocol TabBarViewControllerDelegate
{
    func customTabBarControllerDelegate_CenterButtonTapped(tabBarController:TabBarViewController, button:UIButton, buttonState:Bool);
}
class TabBarViewController: UITabBarController, UITabBarControllerDelegate {
    
    var customTabBarControllerDelegate:TabBarViewControllerDelegate?;
    var centerButton:UIButton!;
    private var centerButtonTappedOnce:Bool = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self;
        self.tabBar.barTintColor = UIColor.orange
        //self.setupMiddleButton()
    }
    
    override func viewDidLayoutSubviews()
    {
        super.viewDidLayoutSubviews();
        self.bringcenterButtonToFront();
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if let identifier = viewController.restorationIdentifier, identifier == "uplodBotan" {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "uplodBotan") as! UploadViewController
            present(vc, animated: true, completion: nil)
            return false
        }
        
        return true
    }
    
    private func bringcenterButtonToFront()
    {
        print("bringcenterButtonToFront called...")
        //self.view.bringSubviewToFront(self.centerButton);
    }
    

    
    private func setupMiddleButton()
    {
        centerButton = UIButton(frame: CGRect(x: 0, y: 0, width: 48, height: 48))
        
//        var centerButtonFrame = centerButton.frame
//        centerButtonFrame.origin.y = view.bounds.height - centerButtonFrame.height
//        centerButtonFrame.origin.x = view.bounds.width/2 - centerButtonFrame.size.width/2
//        centerButton.frame = centerButtonFrame
        
        //centerButton.backgroundColor = UIColor.red
        centerButton.layer.cornerRadius = centerButton.frame.height/2
        view.addSubview(centerButton)
        centerButton.frame.origin.x = view.bounds.height - centerButton.frame.height
        centerButton.frame.origin.y = view.bounds.width / 2 - centerButton.frame.width / 2
        centerButton.setAnchor(top: nil, left: nil, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        //centerButton.setAnchor(top: view.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
        //centerButton.setImage(UIImage(named: "ic_bullseye_red"), for: .normal)
        //centerButton.setImage(UIImage(named: "ic_bullseye_white"), for: .highlighted)
        centerButton.addTarget(self, action: #selector(centerButtonAction(sender:)), for: .touchUpInside)
        
        view.layoutIfNeeded()
    }
    @objc private func centerButtonAction(sender: UIButton)
    {
        //        selectedIndex = 2
        if(!centerButtonTappedOnce)
        {
            centerButtonTappedOnce=true;
            centerButton.setImage(UIImage(named: "ic_bullseye_white"), for: .normal)
        }
        else
        {
            centerButtonTappedOnce=false;
            centerButton.setImage(UIImage(named: "ic_bullseye_red"), for: .normal)
        }
        
        customTabBarControllerDelegate?.customTabBarControllerDelegate_CenterButtonTapped(tabBarController: self,
                                                                                          button: centerButton,
                                                                                          buttonState: centerButtonTappedOnce);
    }


}

//class TabBarViewController: UITabBarController, UITabBarControllerDelegate
//{
//
//
//    override func viewDidLoad()
//    {
////
////        let dashboardVC = DashboardViewController()
////        dashboardVC.tabBarItem = UITabBarItem(tabBarSystemItem: .topRated, tag: 1)
////        let nav1 = UINavigationController(rootViewController: dashboardVC)
////
////        let myFriendsVC = MyFriendsViewController()
////        myFriendsVC.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 2)
////        let nav2 = UINavigationController(rootViewController: myFriendsVC)
////
////        let controller3 = UIViewController()
////        let nav3 = UINavigationController(rootViewController: controller3)
////        nav3.title = ""
////
////        let locatorsVC = LocatorsViewController()
////        locatorsVC.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 4)
////        let nav4 = UINavigationController(rootViewController: locatorsVC)
////
////        let getDirectionsVC = GetDirectionsViewController()
////        getDirectionsVC.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 5)
////        let nav5 = UINavigationController(rootViewController: getDirectionsVC)
////
//       // viewControllers = [nav1, nav2, nav3, nav4, nav5]
//
//
//    }
//
//    // MARK: - TabbarDelegate Methods
//
//    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController)
//    {
//
//    }
//
//    // MARK: - Internal Methods
//
//
//    func hideCenterButton()
//    {
//        centerButton.isHidden = true;
//    }
//
//    func showCenterButton()
//    {
//        centerButton.isHidden = false;
//        self.bringcenterButtonToFront();
//    }
//
//    // MARK: - Private methods
//
//}

//
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}
