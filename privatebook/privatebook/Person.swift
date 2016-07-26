//
//  Person.swift
//  privatebook
//
//  Created by tm on 16/7/26.
//  Copyright © 2016年 tm. All rights reserved.
//

import UIKit

class Person: NSObject {
    var name: String?
    var age: Int = 0
    
    init?(name: String, age: Int) {
        if age > 100 {
            return nil
        }
        
        self.init()
        
        self.name = name
    }
    
}
