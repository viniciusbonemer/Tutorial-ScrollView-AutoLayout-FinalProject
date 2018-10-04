//
//  Button.swift
//  ScrollViewAutolayoutTutorial
//
//  Created by Vinícius Bonemer on 21/09/2018.
//  Copyright © 2018 Vinícius Bonemer. All rights reserved.
//

import UIKit

/**
Uma subclessa de UIButton
 
 Fornece um jeito fácil de inicializar um novo Button e excolher o seu type
 */

class Button: UIButton {
    
    /**
     O tipo do Button
     
     Quando essa propriedade muda, ela atualiza os aspectos visuais do Button para ficar de acordo com esse type
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
     Cria um `Button` com type `Button.CustomType.rectangle`
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
     Cria um `Button` com type `Button.CustomType.rectangle` e bota seu título
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
     Tipods possíveis para o botão
     */
    enum CustomType {
        case rectangle, text
    }
}
