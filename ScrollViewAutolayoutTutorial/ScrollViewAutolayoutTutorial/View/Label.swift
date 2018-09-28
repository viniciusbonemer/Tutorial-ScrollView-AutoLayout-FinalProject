//
//  Label.swift
//  ScrollViewAutolayoutTutorial
//
//  Created by Vinícius Bonemer on 22/09/2018.
//  Copyright © 2018 Vinícius Bonemer. All rights reserved.
//

import UIKit

/**
 A custom subclass of UILabel
 
 Provides an easy way of initializing a new Label
 */

class Label: UILabel {

    /**
     Creates a custom label
     */
    init() {
        super.init(frame: .zero)
        textColor = .grayLabel
        font = UIFont.systemFont(ofSize: 16.0)
    }
    
    /**
     Creates a custom label and sets it's text
     - Parameter text: The text of the label
     */
    convenience init(text: String) {
        self.init()
        self.text = text
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
