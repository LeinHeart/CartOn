//
//  CaptionViewController.swift
//  CartOn
//
//  Created by Eric Victor on 04/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit
import CoreData
import AVFoundation

class CaptionViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate {

    var player = AVAudioPlayer()
    let uploadSoundPath = Bundle.main.path(forResource: "uploadSound", ofType: ".mp3")
    
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
    var vcDelegate: CaptionViewProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let fetchRequest: NSFetchRequest<PostImage> = PostImage.fetchRequest()
        
        //trycatch below
        //            let postImage = try PersistenceService.context.fetch(fetchRequest)
        
        
        titleTextField.delegate = self
        captionTextField.delegate = self
        tagsTextField.delegate = self
        self.view.backgroundColor = .white
        
        stack = UIStackView(frame: CGRect(x: 0, y: 0, width: 0, height: 0 ))
        stack.alignment = .center
        stack.backgroundColor = UIColor.gray
        self.view.addSubview(stack)
        stack.setAnchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(selesai))
        setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setKeyboardListener()
        tabBarController?.tabBar.isHidden = true
        setup()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        //vcDelegate?.navigateHome()
        removeKeyboarfListener()
        Chosen.isChosen = false
        imageView.image = nil
    }
    
  
    func setup() {

        
        self.addDoneButtonOnKeyboard()
        
        //self.view.addSubview(stack)
        stack.addArrangedSubview(imageContainer)
        imageContainer.addSubview(imageView)
        stack.addArrangedSubview(titleLabel)
        stack.addArrangedSubview(titleTextField)
        stack.addArrangedSubview(captionLabel)
        stack.addArrangedSubview(captionTextField)
        stack.addArrangedSubview(tagsLabel)
        stack.addArrangedSubview(tagsTextField)
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        //Stack View
        stack.axis  = NSLayoutConstraint.Axis.vertical
        stack.distribution  = UIStackView.Distribution.fill
        stack.alignment = UIStackView.Alignment.center
        stack.spacing   = 0
        
        //Container
        imageContainer.backgroundColor = UIColor(red: 74/255, green: 74/255, blue: 74/255, alpha: 1.0)
        //imageContainer.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        imageContainer.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
        //View 1
        imageView.frame = CGRect(x: 0, y: 0, width: 200, height: 220)
        DispatchQueue.main.async {
            self.imageView.image = self.ricky
        }
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
        titleTextField.text = ""
        titleTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        titleTextField.leftViewMode = .always
        titleTextField.font = UIFont(name: "Avenir-Book", size: 20)

        //Caption Label
        captionLabel.backgroundColor = UIColor(red: 241/255, green: 241/255, blue: 242/255, alpha: 1.0)
        captionLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        captionLabel.heightAnchor.constraint(equalToConstant: 35).isActive = true
        captionLabel.text  = "  Description"
        captionLabel.textAlignment = .left
        
        //Caption Text Field
        captionTextField.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        captionTextField.heightAnchor.constraint(equalToConstant: 159.0).isActive = true
        captionTextField.backgroundColor = UIColor.white
        captionTextField.font = UIFont(name: "Avenir-Book", size: 18)
        captionTextField.text = " Input Description"
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
        tagsTextField.font = UIFont(name: "Avenir-Book", size: 18)
        tagsTextField.text = " Add Tags"
        tagsTextField.textColor = .lightGray
        tagsTextField.tag = 1
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
                captionTextField.text = " Input Description"
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
    
    @objc func selesai() {
//        let postingImage = PostImage(context: PersistenceService.context)
//        postingImage.title = titleTextField.text
//        postingImage.uploader = "Lily-chan"
//        postingImage.imgDesc = captionTextField.text
//        postingImage.tag = tagsTextField.text
//        postingImage.likeCount = 0
//        let imagePresentation = imageView.image
//        postingImage.image = UIImage.pngData(imagePresentation!)()
//        PersistenceService.saveContext()
        let post = PostClass(uploaderName: "Lily-chan", imageTitle: titleTextField.text!, imageDescription: captionTextField.text!, tags: [tagsTextField.text], likeCount: 0)
        let imagePresentation = imageView.image
        post.addImageFromUiImage(image: imagePresentation!)
        CloudKitHelper().createNewPost(post: post)
        do {
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: uploadSoundPath!))
        }catch {
            print("File not found")
        }
        player.play()
        navigationController?.popViewController(animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        //or
        //self.view.endEditing(true)
        return true
    }
    
    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
        textView.resignFirstResponder()
        return true
    }
    
    func addDoneButtonOnKeyboard()
    {
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 320, height: 50))
        doneToolbar.barStyle = .default

        let flexSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.done, target: self, action: #selector(doneButtonAction))

        let items = NSMutableArray()
        items.add(flexSpace)
        items.add(done)

        doneToolbar.items = (items as! [UIBarButtonItem])
        doneToolbar.sizeToFit()

        self.titleTextField.inputAccessoryView = doneToolbar
        self.captionTextField.inputAccessoryView = doneToolbar
        self.tagsTextField.inputAccessoryView = doneToolbar
    }

    @objc func doneButtonAction()
    {
        self.titleTextField.resignFirstResponder()
        self.captionTextField.resignFirstResponder()
        self.tagsTextField.resignFirstResponder()
    }
    
    func setKeyboardListener(){
        NotificationCenter.default.addObserver(self, selector: #selector(CaptionViewController.keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(CaptionViewController.keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    func removeKeyboarfListener(){
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShow(_ notification:Notification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            //self.view.frame.origin.y -= keyboardSize.height
            if captionTextField.isFirstResponder {
                self.view.frame.origin.y -= keyboardSize.height - 30
            } else if tagsTextField.isFirstResponder {
                self.view.frame.origin.y -= keyboardSize.height - 10
            }
        }
    }
    
    @objc func keyboardWillHide(_ notification:Notification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            //self.view.frame.origin.y += keyboardSize.height
            self.view.frame.origin.y = 0
        }
    }
    
    
    
    
    
    
}

protocol CaptionViewProtocol {
    func navigateHome()
}

protocol CaptionViewAppend {
    func appendData(name: String, title: String, description: String?, tags: [String]!, like: Int!, image: String!)
}


