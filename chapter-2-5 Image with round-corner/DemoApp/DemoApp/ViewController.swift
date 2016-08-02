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
        imageView.frame = CGRectMake(10, 80, 300, 300)
        imageView.contentMode = .ScaleAspectFit
        imageView.layer.cornerRadius = 150
        imageView.layer.masksToBounds = true
        
        self.view.addSubview(imageView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

