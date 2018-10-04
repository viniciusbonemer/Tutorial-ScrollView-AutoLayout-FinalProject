//
//  UIColor.swift
//  ScrollViewAutolayoutTutorial
//
//  Created by Vinícius Bonemer on 22/09/2018.
//  Copyright © 2018 Vinícius Bonemer. All rights reserved.
//

import UIKit

extension UIColor {
    
    /// Inicializa uma UIColor a partir do valor hexadecimal
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
    
    /// A cor usada nas caixas de texto
    static var textField: UIColor {
        return UIColor(hex: "F8F8F8")
    }
    
    /// A cor usada nos botoes
    static var buttonRed: UIColor {
        return UIColor(hex: "C1272D")
    }
    
    /// A cor do botao, quando pressionado
    static var pressedButton: UIColor {
        return UIColor(hex: "E54749")
    }
    
    /// A cor do label
    static var grayLabel: UIColor {
        return UIColor(hex: "C9C8C5")
    }
}
