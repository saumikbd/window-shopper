//
//  CustomTextField.swift
//  Window Shopper
//
//  Created by Sadman Sakib Saumik on 11/16/17.
//  Copyright © 2017 Sadman Sakib Saumik. All rights reserved.
//

import UIKit

@IBDesignable
class CustomTextField: UITextField {
    override func draw(_ rect: CGRect) {
        let size:CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x:5, y:frame.size.height/2 - size/2 , width: size, height: size))
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        currencyLbl.backgroundColor = #colorLiteral(red: 0.5741485357, green: 0.5741624236, blue: 0.574154973, alpha: 0.5)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        TheDesign()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        TheDesign()
    }
    func TheDesign(){
        backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5
        clipsToBounds = true
        textAlignment = .center
        if let place = placeholder{
            attributedPlaceholder=NSAttributedString(string: place, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) ])
        }
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
