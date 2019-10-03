//
//  ExtensionView.swift
//  Apple ou pas
//
//  Created by Adib Lgs on 2019-09-11.
//  Copyright © 2019 Adib Lgs. All rights reserved.
//

import UIKit
extension UIView {
    
    func setLayer()   {
        backgroundColor = .white
        layer.cornerRadius = 10
        // layer.borderColor = UIColor.red.cgColor
        // layer.borderWidth = 2
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.75
        layer.shadowRadius = 3
        layer.shadowOffset = CGSize(width: 3, height: 3)
    }
}
