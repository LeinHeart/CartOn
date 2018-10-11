//
//  LoginViewController.swift
//  CartOn
//
//  Created by Kristopher Chayadi on 11/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit

class LoginViewControllerProg: UIViewController {

    var backgroundImg : UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleToFill
        return iv
    }()
    
    var appName : UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleToFill
        return iv
    }()
    
    var loginBtn : UIButton = {
        let btn = UIButton()
        btn.setTitle("Login", for: .normal)
        return btn
    }()
    
    var usernameTxtField : UITextField = {
        let txtField = UITextField()
        
        return txtField
    }()
    
    var passwordTxtField : UITextField = {
        let txtField = UITextField()
        
        return txtField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundImg.image = UIImage(named: "Background")
        view.addSubview(backgroundImg)
//        view.addSubview(appName)
//        view.addSubview(loginBtn)
//        view.addSubview(usernameTxtField)
//        view.addSubview(passwordTxtField)
        
        backgroundImg.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
       
        
       
    }

}
