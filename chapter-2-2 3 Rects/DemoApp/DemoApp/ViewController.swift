//
//  ViewController.swift
//  DemoApp
//
//  Created by kris on 6/5/16.
//  Copyright © 2016 kris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let view1 = UIView(frame: CGRectMake(20, 80, 280, 280))
        view1.backgroundColor = UIColor.redColor()
        self.view.addSubview(view1)
        
        let view2 = UIView(frame: CGRectMake(10, 20, 200, 200))
        view2.bounds = CGRectMake(-50, -50, 200, 200)
        view2.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(view2)
        
        let view3 = UIView(frame: CGRectMake(0, 0, 100, 100))
        view3.backgroundColor = UIColor.blueColor()
        view2.addSubview(view3)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

