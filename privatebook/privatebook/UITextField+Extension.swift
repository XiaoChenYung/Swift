//
//  UITextField+Extension.swift
//  privatebook
//
//  Created by tm on 16/7/26.
//  Copyright © 2016年 tm. All rights reserved.
//

import UIKit
extension UITextField {
    convenience init(placeholder: String,fontSize: CGFloat) {
        self.init()
        self.borderStyle = .roundedRect
        self.text = "0"
        self.placeholder = "0"
        self.font = UIFont.systemFont(ofSize: fontSize)
    }
}
