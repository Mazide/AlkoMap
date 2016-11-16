//
//  NDAuthorizationTextField.swift
//  AlcoMap
//
//  Created by Nikita Demidov on 11.11.16.
//  Copyright © 2016 Nikita Demidov. All rights reserved.
//

import UIKit
import JVFloatLabeledTextField

class NDAuthorizationTextField: JVFloatLabeledTextField {
   
    override func layoutSubviews() {
        super.layoutSubviews()
        addBottomLine()
        placeholderColor = UIColor.white
        
        let attributes = [NSForegroundColorAttributeName : UIColor.white]
        self.attributedPlaceholder = NSAttributedString(string: self.placeholder!, attributes: attributes)
    }
    
    func addBottomLine() {
        let bottomBorder = CALayer()
        bottomBorder.frame = CGRect(x: 0, y: self.frame.size.height - 1, width: self.frame.size.width, height: 1)
        bottomBorder.backgroundColor = UIColor.white.cgColor
        self.layer.addSublayer(bottomBorder)
    }
}
