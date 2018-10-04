//
//  Label.swift
//  ScrollViewAutolayoutTutorial
//
//  Created by Vinícius Bonemer on 22/09/2018.
//  Copyright © 2018 Vinícius Bonemer. All rights reserved.
//

import UIKit

/**
 Uma subclasse customizada de UILabel
 
 Fornece um jeito fácil de inicializar um novo Label
 */

class Label: UILabel {

    /**
     Cria um label customizado
     */
    init() {
        super.init(frame: .zero)
        textColor = .grayLabel
        font = UIFont.systemFont(ofSize: 16.0)
    }
    
    /**
     Cria um novo label e determina seu texto
     - Parameter text: O texto do label
     */
    convenience init(text: String) {
        self.init()
        self.text = text
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
