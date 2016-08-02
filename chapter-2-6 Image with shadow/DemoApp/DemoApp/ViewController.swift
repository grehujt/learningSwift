//
//  ViewController.swift
//  DemoApp
//
//  Created by kris on 6/6/16.
//  Copyright © 2016 kris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let image = UIImage(named: "pic")
        let imageView = UIImageView(image: image)
        imageView.frame = CGRectMake(36, 80, 248, 164)
        imageView.contentMode = .ScaleAspectFit
        imageView.layer.shadowColor = UIColor.blackColor().CGColor
        imageView.layer.shadowOffset = CGSizeMake(10, 10)
        imageView.layer.shadowRadius = 5
        imageView.layer.shadowOpacity = 0.5
        
        self.view.addSubview(imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

