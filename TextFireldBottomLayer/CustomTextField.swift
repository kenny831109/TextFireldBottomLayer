//
//  CustomTextField.swift
//  TextFireldBottomLayer
//
//  Created by 逸唐陳 on 2019/1/31.
//  Copyright © 2019 逸唐陳. All rights reserved.
//
import UIKit

class CustomTextField: UITextField {
    
    private var _padding = UIEdgeInsets(top: 0, left: 7, bottom: 0, right: 7)
    private var _borderColor = UIColor.gray
    
    var borderColor: UIColor {
        get {
            return _borderColor
        }set {
            if newValue != _borderColor {
                _borderColor = newValue
            }
        }
    }
    
    var padding: UIEdgeInsets {
        get {
            return _padding
        }set {
            if newValue != _padding {
                _padding = newValue
            }
        }
    }
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
}

extension CustomTextField {
    
    func setBottomBorder() {
        self.borderStyle = .none
        self.layer.backgroundColor = UIColor.white.cgColor
        self.layer.masksToBounds = false
        self.layer.shadowColor = borderColor.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
    }
    
}
