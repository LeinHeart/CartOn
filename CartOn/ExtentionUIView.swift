//
//  ExtentionUIView.swift
//  CartOn
//
//  Created by Kristopher Chayadi on 04/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit

extension UIView {
    func setCellShadow() {
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 0.4
        self.layer.masksToBounds = false
        self.clipsToBounds = false
        self.layer.cornerRadius = 15
    }
    
    func setAnchor(top: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?,
                   bottom: NSLayoutYAxisAnchor?, right: NSLayoutXAxisAnchor?,
                   paddingTop: CGFloat, paddingLeft: CGFloat, paddingBottom: CGFloat,
                   paddingRight: CGFloat, width: CGFloat = 0, height: CGFloat = 0) {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        
        if width != 0 {
            self.widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if height != 0 {
            self.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    
    func setScaledCustomFont(label: UILabel) {
        label.font = getScaledFont(forFont: "Avenir-medium", textStyle: .title1)
        label.adjustsFontForContentSizeCategory = true
    }
    
    func getScaledFont(forFont name: String, textStyle: UIFont.TextStyle) -> UIFont {
        
        /// Uncomment the code below to check all the available fonts and have them printed in the console to double check the font name with existing fonts 😉
        
        /*for family: String in UIFont.familyNames
         {
         print("\(family)")
         for names: String in UIFont.fontNames(forFamilyName: family)
         {
         print("== \(names)")
         }
         }*/
        
        let userFont =  UIFontDescriptor.preferredFontDescriptor(withTextStyle: textStyle)
        let pointSize = userFont.pointSize
        guard let customFont = UIFont(name: name, size: pointSize) else {
            fatalError("""
                Failed to load the "\(name)" font.
                Make sure the font file is included in the project and the font name is spelled correctly.
                """
            )
        }
        return UIFontMetrics.default.scaledFont(for: customFont)
    }
    
}

extension UIImage{
    func saveToTemporaryLocation() throws -> URL {
        let imageData = self.pngData()
        let fileName = "\(Date().timeIntervalSince1970)" + ".png"
        let url = NSURL.fileURL(withPath: NSTemporaryDirectory()).appendingPathComponent(fileName)
        try imageData?.write(to: url,options: .atomic)
        return url
    }
}

extension UIFont {
    
    /**
     Will return the best font conforming to the descriptor which will fit in the provided bounds.
     */
    static func bestFittingFontSize(for text: String, in bounds: CGRect, fontDescriptor: UIFontDescriptor, additionalAttributes: [NSAttributedString.Key: Any]? = nil) -> CGFloat {
        let constrainingDimension = min(bounds.width, bounds.height)
        let properBounds = CGRect(origin: .zero, size: bounds.size)
        var attributes = additionalAttributes ?? [:]
        
        let infiniteBounds = CGSize(width: CGFloat.infinity, height: CGFloat.infinity)
        var bestFontSize: CGFloat = constrainingDimension
        
        for fontSize in stride(from: bestFontSize, through: 0, by: -1) {
            let newFont = UIFont(descriptor: fontDescriptor, size: fontSize)
            attributes[.font] = newFont
            
            let currentFrame = text.boundingRect(with: infiniteBounds, options: [.usesLineFragmentOrigin, .usesFontLeading], attributes: attributes, context: nil)
            
            if properBounds.contains(currentFrame) {
                bestFontSize = fontSize
                break
            }
        }
        return bestFontSize
    }
    
    static func bestFittingFont(for text: String, in bounds: CGRect, fontDescriptor: UIFontDescriptor, additionalAttributes: [NSAttributedString.Key: Any]? = nil) -> UIFont {
        let bestSize = bestFittingFontSize(for: text, in: bounds, fontDescriptor: fontDescriptor, additionalAttributes: additionalAttributes)
        return UIFont(descriptor: fontDescriptor, size: bestSize)
    }
}

extension UILabel {
    
    /// Will auto resize the contained text to a font size which fits the frames bounds.
    /// Uses the pre-set font to dynamically determine the proper sizing
    func fitTextToBounds() {
        guard let text = text, let currentFont = font else { return }
        
        let bestFittingFont = UIFont.bestFittingFont(for: text, in: bounds, fontDescriptor: currentFont.fontDescriptor, additionalAttributes: basicStringAttributes)
        font = bestFittingFont
    }
    
    private var basicStringAttributes: [NSAttributedString.Key: Any] {
        var attribs = [NSAttributedString.Key: Any]()
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = self.textAlignment
        paragraphStyle.lineBreakMode = self.lineBreakMode
        attribs[.paragraphStyle] = paragraphStyle
        
        return attribs
    }
}

