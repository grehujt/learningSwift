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
        
        let rect1 = CGRectMake(30, 50, 200, 200)
        let view1 = UIView(frame: rect1)
        view1.backgroundColor = UIColor.brownColor()
        
        let rect2 = CGRectMake(90, 120, 200, 200)
        let view2 = UIView(frame: rect2)
        view2.backgroundColor = UIColor.purpleColor()
        
        self.view.addSubview(view1)
        self.view.addSubview(view2)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

