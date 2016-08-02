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
        
        let image = UIImage(named: "pic")
        let imageView = UIImageView(image: image)
        imageView.frame = self.view.frame
        imageView.contentMode = .ScaleAspectFit
        imageView.layer.borderWidth = 10
        imageView.layer.borderColor = UIColor.grayColor().CGColor
        self.view.addSubview(imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

