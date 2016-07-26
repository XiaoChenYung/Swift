//
//  Persion.swift
//  计算器
//
//  Created by tm on 16/7/26.
//  Copyright © 2016年 tm. All rights reserved.
//

import UIKit

class Persion: NSObject {
    
    var name: String?
    
    override init() {
        
        name = "haha"
        super.init()
    }
    
    init(dict:[String: AnyObject]) {
        super.init()
        
        setValuesForKeys(dict)
    }
    
    init(name: String) {
        self.name = name
        super.init()
    }

}
