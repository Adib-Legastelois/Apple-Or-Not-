//
//  MonLabel.swift
//  Apple ou pas
//
//  Created by Adib Lgs on 2019-09-12.
//  Copyright © 2019 Adib Lgs. All rights reserved.
//

import UIKit

class MonLabel: UILabel {
    
    private var _font: UIFont = UIFont.systemFont(ofSize: 22)
    private var _color: UIColor = UIColor.white
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        textColor = _color
        numberOfLines = 0
        textAlignment = NSTextAlignment.center
        adjustsFontSizeToFitWidth = true
        font = _font
        updateText(nil, nil)
    }
    
    func updateText(_ tempsRestant: Int?, _ score: Int?) {
        let texte = "Est-ce un logo Apple?"
        if tempsRestant == nil && score == nil {
            text = texte
            
        } else {
                let attributes = NSMutableAttributedString(
                     string: texte + "\n",
                     attributes: [
                         NSAttributedString.Key.foregroundColor: _color,
                         NSAttributedString.Key.font: _font
                    ])
            attributes.append(NSAttributedString(
                string: "Temps restant: \(tempsRestant!) - Score: \(score!)",
               
                attributes: [
                    .foregroundColor: UIColor.red,
                    .font: UIFont.boldSystemFont(ofSize: 24)
            ]))
        attributedText = attributes
          
        }
        
    }
}
