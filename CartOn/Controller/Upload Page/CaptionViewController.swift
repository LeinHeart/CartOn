//
//  CaptionViewController.swift
//  CartOn
//
//  Created by Eric Victor on 04/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit

class CaptionViewController: UIViewController {

    var stack = UIStackView.init()
    let imageView = UIImageView.init()
    let textLabel = UILabel.init()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: nil, action: #selector(cancelBtn))
        
        self.view.backgroundColor = .gray
        
        stack = UIStackView(frame: CGRect(x: 0, y: 0, width: 0, height: 0 ))
        
        stack.backgroundColor = UIColor.gray
        self.view.addSubview(stack)
        stack.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
        
        setup()
    }
    
  
    func setup() {
    //View 1
        imageView.backgroundColor = UIColor.blue
        imageView.heightAnchor.constraint(equalToConstant: 120.0).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 120.0).isActive = true
        imageView.image = UIImage(named: "buttonFollowCheckGreen")
        
        imageView.setAnchor(top: imageView.topAnchor, left: imageView.leftAnchor, bottom: imageView.bottomAnchor, right: imageView.rightAnchor, paddingTop: 40, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
        //Text Label
        textLabel.backgroundColor = UIColor.yellow
        textLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        textLabel.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
        textLabel.text  = "Title"
        textLabel.textAlignment = .center
        
        //Stack View
        
        stack.axis  = NSLayoutConstraint.Axis.vertical
        stack.distribution  = UIStackView.Distribution.equalSpacing
        stack.alignment = UIStackView.Alignment.center
        stack.spacing   = 16.0
        
        stack.addArrangedSubview(imageView)
        stack.addArrangedSubview(textLabel)
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(stack)
        
        //Constraints
        stack.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stack.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
}
