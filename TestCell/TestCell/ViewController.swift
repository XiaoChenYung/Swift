//
//  ViewController.swift
//  TestCell
//
//  Created by tm on 16/7/28.
//  Copyright © 2016年 tm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testView: UIView!
    
    @IBOutlet weak var testViewTop: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        testView.layer.anchorPoint = CGPoint.init(x: 0.5, y: 1)
        testViewTop.constant += testView.bounds.size.height/2
        testView.layer.transform = testView.transform3d()
    }


}

extension UIView {
    func transform3d() -> CATransform3D {
        var transform = CATransform3DIdentity
        transform.m34 = 2.5 / -2000;
        return transform
    }
}

