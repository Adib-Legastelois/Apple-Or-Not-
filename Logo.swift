//
//  Logo.swift
//  Apple ou pas
//
//  Created by Adib Lgs on 2019-09-12.
//  Copyright © 2019 Adib Lgs. All rights reserved.
//

import UIKit

class Logo {
    
    private var _appleImages: [UIImage?] = [  UIImage(named: "apple 1"),
        UIImage(named: "apple 2")]
    private var _autreImages: [UIImage?] = [UIImage(named: "android"),
        UIImage(named: "Windows")]
    
    private var _image: UIImage?
    private var _isApple: Bool
    
    var image: UIImage? {
        return _image
    }
    var isApple: Bool {
        return _isApple
    }
    init(bool: Bool) {
        _isApple = bool
        let random = Int.random(in: 0...1)
        _image = _isApple ? _appleImages[random] :_autreImages[random]
    }
    
}
