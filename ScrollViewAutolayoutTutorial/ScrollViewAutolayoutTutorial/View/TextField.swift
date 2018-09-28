//
//  TextField.swift
//  ScrollViewAutolayoutTutorial
//
//  Created by Vinícius Bonemer on 21/09/2018.
//  Copyright © 2018 Vinícius Bonemer. All rights reserved.
//

import UIKit

/**
 A custom subclass of UITextField
 
 Provides an easy way of initializing a new TextField
 */

class TextField: UITextField {
    
    /**
     Sets up the default appearence of the TextField
     */
    fileprivate func setUp() {
        layer.cornerRadius = 8.0
        font = UIFont.systemFont(ofSize: 20)
        textAlignment = .center
        borderStyle = .none
        backgroundColor = .textField
        autocapitalizationType = .none
    }

    /**
     Creates a custom TextField
     */
    init() {
        super.init(frame: CGRect.zero)
        setUp()
    }
    
    /**
     Creates a custom TextField and sets it's placeholder text
     - Parameter placeholder: The placeholder text shown in the TextField
     */
    convenience init(placeholder: String) {
        self.init()
        self.placeholder = placeholder
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
