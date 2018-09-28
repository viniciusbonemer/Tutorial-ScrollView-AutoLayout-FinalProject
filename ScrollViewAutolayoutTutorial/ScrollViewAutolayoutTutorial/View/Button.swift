//
//  Button.swift
//  ScrollViewAutolayoutTutorial
//
//  Created by Vinícius Bonemer on 21/09/2018.
//  Copyright © 2018 Vinícius Bonemer. All rights reserved.
//

import UIKit

/**
 A custom subclass of UIButton
 
 Provides an easy way of initializing a new Button and changing a Button type
 */

class Button: UIButton {
    
    /**
     The type of the Button
     
     When this property changes, it updates the visual aspects of the Button to match this type
     */
    var type: CustomType = .rectangle {
        willSet {
            switch newValue {
            case .rectangle:
                backgroundColor = .buttonRed
                setTitleColor(.white, for: .normal)
            case .text:
                backgroundColor = .clear
                setTitleColor(.buttonRed, for: .normal)
            }
        }
    }
    
    /**
     Creates a custom button of type `Button.CustomType.rectangle`
     */
    init() {
        super.init(frame: .zero)
        layer.cornerRadius = 8.0
        backgroundColor = .buttonRed
        setTitle("Button", for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: 24)
        titleLabel?.textAlignment = .center
        setTitleColor(.white, for: .normal)
        setTitleColor(.pressedButton, for: .highlighted)
    }
    
    /**
     Creates a custom button of type `Button.CustomType.rectangle` and sets it's title
     - Parameter title: The title of the button
     */
    convenience init(title: String) {
        self.init()
        setTitle(title, for: .normal)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension Button {
    
    /**
     Possible types for the button
     */
    enum CustomType {
        case rectangle, text
    }
}
