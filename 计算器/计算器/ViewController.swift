
//
//  ViewController.swift
//  计算器
//
//  Created by tm on 16/7/25.
//  Copyright © 2016年 tm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 重载函数名相同，参数或者个数不一样
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.2202886641, green: 0.7022308707, blue: 0.9593387842, alpha: 1)
        
        let s = Persion(dict: ["name": "老王"])
        print(s.name)
        
        
//        downloadData { (result) in
//            print(result)
//        }
//        loaddata { (result) in
//            
//        }
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
    
    
    
    func loaddata(callback:(result:[String]) -> Void) {
        callback(result: ["1"])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

