//
//  CaptionViewController.swift
//  CartOn
//
//  Created by Eric Victor on 04/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit

class CaptionViewController: UIViewController, UITextViewDelegate {

    var stack = UIStackView.init()
    let imageView = UIImageView.init()
    let titleLabel = UILabel.init()
    let captionLabel = UILabel.init()
    let tagsLabel = UILabel.init()
    let titleTextField = UITextField.init()
    let captionTextField = UITextView.init()
    let tagsTextField = UITextView.init()
    let imageContainer = UIView.init()
    var ricky = UIImage.init()
    
//    let titleContainer = UIView.init()
//    let inputTitleContainer = UIView.init()
//    let captionContainer = UIView.init()
//    let inputCaptionContainer = UIView.init()
//    let tagsContainer = UIView.init()
//    let inputTagsContainer = UIView.init()

    var vcDelegate: CaptionViewProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        captionTextField.delegate = self
        tagsTextField.delegate = self
        self.view.backgroundColor = .gray
        
        stack = UIStackView(frame: CGRect(x: 0, y: 0, width: 0, height: 0 ))
        stack.alignment = .center
        
        //vcDelegate?.ambilImage()
        
        stack.backgroundColor = UIColor.gray
        self.view.addSubview(stack)
        stack.setAnchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(selesai))
        
        //stack.distribution = .fill
        setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tabBarController?.tabBar.isHidden = true
        setup()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        //vcDelegate?.navigateHome()
        Chosen.isChosen = false
        imageView.image = nil
    }
    
  
    func setup() {
        
//        var rect = captionTextField.frame
//
//        rect.size.height = 50
//
//        captionTextField.frame = rect
        
        self.view.addSubview(stack)
        stack.addArrangedSubview(imageContainer)
        imageContainer.addSubview(imageView)
        stack.addArrangedSubview(titleLabel)
        stack.addArrangedSubview(titleTextField)
        stack.addArrangedSubview(captionLabel)
        stack.addArrangedSubview(captionTextField)
        stack.addArrangedSubview(tagsLabel)
        stack.addArrangedSubview(tagsTextField)
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        
//        titleContainer.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 35)
//        inputTitleContainer.frame = CGRect(x: 0, y: 0, width: <#T##Int#>, height: <#T##Int#>)
        
        
        //Stack View
        stack.axis  = NSLayoutConstraint.Axis.vertical
        stack.distribution  = UIStackView.Distribution.fill
        stack.alignment = UIStackView.Alignment.center
        stack.spacing   = 0
        
        //Container
        imageContainer.backgroundColor = UIColor(red: 74/255, green: 74/255, blue: 74/255, alpha: 1.0)
        imageContainer.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        imageContainer.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
        //View 1
        imageView.frame = CGRect(x: 0, y: 0, width: 200, height: 220)
        DispatchQueue.main.async {
            self.imageView.image = self.ricky
        }
        //imageView.center = CGPoint(x: view.bounds.width / 2, y: view.bounds.height / 2)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.heightAnchor.constraint(equalToConstant: 220).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.centerXAnchor.constraint(equalTo: imageContainer.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: imageContainer.centerYAnchor).isActive = true
        imageView.image = UIImage(named: "buttonFollowCheckGreen")
        
        
        //Text Label
        titleLabel.backgroundColor = UIColor(red: 241/255, green: 241/255, blue: 242/255, alpha: 1.0)
        titleLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 35).isActive = true
        titleLabel.setAnchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 15, paddingBottom: 0, paddingRight: 0)
        titleLabel.text  = "  Title"
        titleLabel.textAlignment = .left
        
        //Title Text Field
        titleTextField.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        titleTextField.heightAnchor.constraint(equalToConstant: 60.0).isActive = true
        titleTextField.backgroundColor = UIColor.white
        titleTextField.placeholder = "Input Title"
        titleTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        titleTextField.leftViewMode = .always
        titleTextField.font = UIFont(name: "Avenir-Book", size: 20)

        //Caption Label
        captionLabel.backgroundColor = UIColor(red: 241/255, green: 241/255, blue: 242/255, alpha: 1.0)
        captionLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        captionLabel.heightAnchor.constraint(equalToConstant: 35).isActive = true
        captionLabel.text  = "  Caption"
        captionLabel.textAlignment = .left
        
        //Caption Text Field
        captionTextField.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        captionTextField.heightAnchor.constraint(equalToConstant: 159.0).isActive = true
        captionTextField.backgroundColor = UIColor.white
        // captionTextField.placeholder = "Input Caption"
        // captionTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        // captionTextField.leftViewMode = .always
        captionTextField.font = UIFont(name: "Avenir-Book", size: 18)
        captionTextField.text = " Input Caption"
        captionTextField.textColor = .lightGray
        captionTextField.tag = 0
        
        
        //Tags Label
        tagsLabel.backgroundColor = UIColor(red: 241/255, green: 241/255, blue: 242/255, alpha: 1.0)
        tagsLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        tagsLabel.heightAnchor.constraint(equalToConstant: 35).isActive = true
        tagsLabel.text  = "  Tags"
        tagsLabel.textAlignment = .left
        
        //Tags Text Field
        tagsTextField.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        tagsTextField.heightAnchor.constraint(equalToConstant: 148.0).isActive = true
        tagsTextField.backgroundColor = UIColor.white
        // tagsTextField.placeholder = "Add Tags"
        // tagsTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        // tagsTextField.leftViewMode = .always
        tagsTextField.font = UIFont(name: "Avenir-Book", size: 18)
        tagsTextField.text = " Add Tags"
        tagsTextField.textColor = .lightGray
        tagsTextField.tag = 1

        
//        self.view.addSubview(stack)
//        stack.addArrangedSubview(imageContainer)
//        imageContainer.addSubview(imageView)
//        stack.addArrangedSubview(titleLabel)
//        stack.addArrangedSubview(titleTextField)
//        stack.addArrangedSubview(captionLabel)
//        stack.addArrangedSubview(captionTextField)
//        stack.addArrangedSubview(tagsLabel)
//        stack.addArrangedSubview(tagsTextField)
//        stack.translatesAutoresizingMaskIntoConstraints = false
        
        //imageView.setAnchor(top: stack.topAnchor, left: nil ,bottom: titleLabel.topAnchor, right: nil, paddingTop: 20, paddingLeft: 0, paddingBottom: 57, paddingRight: 0)
        
       // titleTextField.setAnchor(top: titleLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
        
        
        
        //imageView.centerXAnchor.constraint(equalTo: imageContainer.centerXAnchor).isActive = true
        //imageView.centerYAnchor.constraint(equalTo: imageContainer.centerYAnchor).isActive = true
        
        //Constraints
        //stack.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        //stack.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
    
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.tag == 0 {
            if captionTextField.textColor == .lightGray {
                captionTextField.text = nil
                captionTextField.textColor = .black
            }
        } else if textView.tag == 1 {
            if tagsTextField.textColor == .lightGray {
                tagsTextField.text = nil
                tagsTextField.textColor = .black
            }
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.tag == 0 {
            if captionTextField.text.isEmpty {
                captionTextField.text = " Input Caption"
                captionTextField.textColor = .lightGray
            }
        } else if textView.tag == 1 {
            if tagsTextField.text.isEmpty {
                tagsTextField.text = " Add Tags"
                tagsTextField.textColor = .lightGray
            }
        }
    }
    
    func setImage(image: UIImage) {
        ricky = image
    }
    
    @objc func selesai()
    {
        navigationController?.popViewController(animated: true)
        
    }
}

protocol CaptionViewProtocol {
    func navigateHome()
}

protocol CaptionViewAppend {
    func appendData(name: String, title: String, description: String?, tags: [String]!, like: Int!, image: String!)
}


