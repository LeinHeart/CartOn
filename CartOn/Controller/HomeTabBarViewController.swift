//
//  HomeTabBarViewController.swift
//  CartOn
//
//  Created by Kristopher Chayadi on 26/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit

class HomeTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        NotificationCenter.default.addObserver(self, selector: #selector(HomeTabBarViewController.networkStatusChanged(_ :)), name: NSNotification.Name(ReachabilityStatusChangedNotification), object: nil)
        NetworkHelper().monitorReachabilityChanges()
    }
    
    @objc func networkStatusChanged(_ notification: NSNotification){
        let status = NetworkHelper().connectionStatus()
        print(status)
        switch status {
        case .offline:
            let offlineAlert = UIAlertController(title: "Warning", message: "You're don't have internet connection, Please check your connection", preferredStyle: .alert)
            offlineAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(offlineAlert,animated: true,completion: nil)
        case .online(.wwan):
            let unstableAlert = UIAlertController(title: "Warning", message: "You are running in unstable or poor connection, do you want to continue the process?", preferredStyle: .alert)
            unstableAlert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { (action) in
                CloudKitHelper().fetchPostRecord(suc: { ([PostClass]) in
                    HomeViewController().popsView.uploadPost.removeAll()
                    DispatchQueue.global().async {
                        guard let sementara = CloudKitHelper().fetchPostRecord(suc: { (res) in
                            for i in res {
                                HomeViewController().popsView.uploadPost.append(i)
                            }
                            
                            DispatchQueue.main.async {
                                HomeViewController().popsView.collectionView.reloadData()
                            }
                            
                        }) else {return}
                        
                    }
                })}))
        case .online(.wiFi):
            print("ini wifi")
//            CloudKitHelper().fetchPostRecord(suc: { ([PostClass]) in
//                if HomeViewController().popsView.uploadPost != nil{
//                    HomeViewController().popsView.uploadPost.removeAll()
//                }
//                DispatchQueue.global().async {
//                    guard let sementara = CloudKitHelper().fetchPostRecord(suc: { (res) in
//                        for i in res {
//                            HomeViewController().popsView.uploadPost.append(i)
//                        }
//                        
//                        DispatchQueue.main.async {
//                            HomeViewController().popsView.collectionView.reloadData()
//                        }
//                        
//                    }) else {return}
//                    
//                }
//            })
        case .unknown:
            print("ini unknown")
            CloudKitHelper().fetchPostRecord(suc: { ([PostClass]) in
                HomeViewController().popsView.uploadPost.removeAll()
                DispatchQueue.global().async {
                    guard let sementara = CloudKitHelper().fetchPostRecord(suc: { (res) in
                        for i in res {
                            HomeViewController().popsView.uploadPost.append(i)
                        }
                        
                        DispatchQueue.main.async {
                            HomeViewController().popsView.collectionView.reloadData()
                        }
                        
                    }) else {return}
                    
                }
            })
        
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
    
}
