//
//  MonButton.swift
//  Apple ou pas
//
//  Created by Adib Lgs on 2019-09-11.
//  Copyright © 2019 Adib Lgs. All rights reserved.
//

import UIKit

class MonButton: UIButton {

    func setup(string: String) {
        setLayer()
        setTitle(string, for: UIControl.State.normal)
        setTitleColor(UIColor.darkGray, for: .normal)
    }

}
