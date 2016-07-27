//
//  XCLabel.swift
//  SwiftWeibo
//
//  Created by tm on 16/7/27.
//  Copyright © 2016年 tm. All rights reserved.
//

import UIKit

class XCLabel: UILabel {

    var p: XCPerson? {
        didSet {
            text = p?.title
        }
    }
    
    

}
