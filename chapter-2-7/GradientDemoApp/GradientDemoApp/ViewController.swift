//
//  ViewController.swift
//  GradientDemoApp
//
//  Created by kris on 6/8/16.
//  Copyright © 2016 kris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let rect = CGRectMake(10, 8, 200, 200)
        let gradientView = UIView(frame: rect)
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = gradientView.frame
        let yellow = UIColor.yellowColor().CGColor
        let red = UIColor.redColor().CGColor
        let purple = UIColor.purpleColor().CGColor
        gradientLayer.colors = [yellow, red, purple]
        gradientView.layer.addSublayer(gradientLayer)
        self.view.addSubview(gradientView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

