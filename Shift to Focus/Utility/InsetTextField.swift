//
//  InsetTextField.swift
//  Shift to Focus
//
//  Created by Boyuan Xu on 10/19/20.
//

import UIKit

class InsetTextField: UITextField {
    
    let padding = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)

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
