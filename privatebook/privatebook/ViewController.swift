//
//  ViewController.swift
//  privatebook
//
//  Created by tm on 16/7/26.
//  Copyright © 2016年 tm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.baidu.com")
        URLSession.shared.dataTask(with: url!) { (data, _, error) in
            guard let data = data else {
                return
            }
            
            let html = String(data: data, encoding: .utf8)
            print(html)
            
        }.resume()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

