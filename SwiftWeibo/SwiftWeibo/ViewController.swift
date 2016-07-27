//
//  ViewController.swift
//  SwiftWeibo
//
//  Created by tm on 16/7/26.
//  Copyright © 2016年 tm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var lable: XCLabel = XCLabel()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p = XCPerson()
        p.title = "老王"
        
//        print(p.title)
        
//        
        view.backgroundColor = #colorLiteral(red: 0.1991284192, green: 0.6028449535, blue: 0.9592232704, alpha: 1)
        lable.p = p
        lable.sizeToFit()
        lable.center = view.center
        view.addSubview(lable)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

