//
//  UIColor.swift
//  ScrollViewAutolayoutTutorial
//
//  Created by Vinícius Bonemer on 22/09/2018.
//  Copyright © 2018 Vinícius Bonemer. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.scanLocation = 0
        
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        
        self.init(
            red: CGFloat(r) / 0xff,
            green: CGFloat(g) / 0xff,
            blue: CGFloat(b) / 0xff, alpha: 1
        )
    }
    
    static var textField: UIColor {
        return UIColor(hex: "F8F8F8")
    }
    
    static var buttonRed: UIColor {
        return UIColor(hex: "C1272D")
    }
    
    static var pressedButton: UIColor {
        return UIColor(hex: "E54749")
    }
    
    static var grayLabel: UIColor {
        return UIColor(hex: "C9C8C5")
    }
}
