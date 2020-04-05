//
//  CurrencyTextField.swift
//  window-shopper-app
//
//  Created by Pravir Ahuja on 05/04/20.
//  Copyright © 2020 Priyank Ahuja. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {

    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 0.999904573, green: 1, blue: 0.9998808503, alpha: 0.2531360035)
        layer.cornerRadius = 10
        layer.masksToBounds = true
        textAlignment = .center
        keyboardType = .decimalPad
        enablesReturnKeyAutomatically = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor : #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
