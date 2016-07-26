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
    var age: Int = 0
    var title: String?
    
    
    override init() {
        
        name = "haha"
        super.init()
    }
    
    class func propertylist() -> [String] {
        var count: UInt32 = 0
        var pty = class_copyPropertyList(self, &count)
        
        print("数量 + \(count)")
        return []
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
