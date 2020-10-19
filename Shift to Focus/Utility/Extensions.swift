//
//  Extensions.swift
//  Shift to Focus
//
//  Created by Boyuan Xu on 10/10/20.
//

import UIKit

extension UIView {
    
    convenience init(height: CGFloat) {
        self.init()
        backgroundColor = .systemGray2
        snp.makeConstraints { (this) in
            this.height.equalTo(height)
        }
    }
    
}

extension UITextField {
    
    convenience init(placeholder: String) {
        self.init()
        backgroundColor = .label
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor : UIColor.systemBackground])
        textColor = .systemBackground
    }
    
}

extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
    
}


extension UIButton {
    
    convenience init(customTitle: String) {
        self.init()
        backgroundColor = Shared.themeColor
        setTitle(customTitle, for: .normal)
        setTitleColor(.white, for: .normal)
        layer.cornerRadius = 5
    }
    
    convenience init(title1: String, title2: String) {
        self.init()
        let attributedTitle1 = NSAttributedString(string: title1, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 17, weight: .thin)])
        let attributedTitle2 = NSAttributedString(string: title2, attributes: [
            NSAttributedString.Key.font : UIFont.systemFont(ofSize: 17, weight: .bold),
            NSAttributedString.Key.foregroundColor: Shared.themeColor
        ])
        let titleCombined = NSMutableAttributedString()
        titleCombined.append(attributedTitle1)
        titleCombined.append(attributedTitle2)
        setAttributedTitle(titleCombined, for: .normal)
    }
    
}
