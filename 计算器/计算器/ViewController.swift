//
//  ViewController.swift
//  计算器
//
//  Created by tm on 16/7/25.
//  Copyright © 2016年 tm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadData { (result) in
            print(result)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func downloadData(callBack:(result: [String])->()) {
        DispatchQueue.global().async {
            let json = ["哈哈","嘿嘿","嘻嘻"]
            DispatchQueue.main.async {
                callBack(result: json)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

