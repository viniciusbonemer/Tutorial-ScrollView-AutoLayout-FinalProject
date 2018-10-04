//
//  TextField.swift
//  ScrollViewAutolayoutTutorial
//
//  Created by Vinícius Bonemer on 21/09/2018.
//  Copyright © 2018 Vinícius Bonemer. All rights reserved.
//

import UIKit

/**
 Uma subclasse customizada de UITextField
 
 Fornece um jeito fácil de inicializar uma caixa de texto
 */

class TextField: UITextField {
    
    /**
     Determina o visual padrão do TextField
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
     Cria um TextField customizado
     */
    init() {
        super.init(frame: CGRect.zero)
        setUp()
    }
    
    /**
     Cria um TextField customizado e configura seu texto placeholder
     - Parameter placeholder: O texto placeholder mostrado no TextField
     */
    convenience init(placeholder: String) {
        self.init()
        self.placeholder = placeholder
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
