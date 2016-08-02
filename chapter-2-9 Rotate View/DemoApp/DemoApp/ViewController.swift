//
//  ViewController.swift
//  DemoApp
//
//  Created by kris on 6/12/16.
//  Copyright © 2016 kris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let rect = CGRectMake(50, 150, 200, 50)
        let view = UIView(frame: rect)
        view.backgroundColor = UIColor.brownColor()
        self.view.addSubview(view)
        var transform = view.transform
        transform = CGAffineTransformRotate(transform, 3.14/4)
        view.transform = transform
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

