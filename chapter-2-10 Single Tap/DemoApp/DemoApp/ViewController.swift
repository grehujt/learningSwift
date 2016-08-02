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
        
        let rect = CGRectMake(32, 80, 256, 256)
        let imageView = UIImageView(frame: rect)
        let image = UIImage(named: "pic")
        imageView.image = image
        imageView.userInteractionEnabled = true
        self.view.addSubview(imageView)
        
        let guesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.onSingleTap))
        imageView.addGestureRecognizer(guesture)
    }
    
    func onSingleTap() {
        let alertView = UIAlertController(title: "Information", message: "Single tap", preferredStyle: .Alert)
        let ok = UIAlertAction(title: "Ok", style: .Default, handler: nil)
        alertView.addAction(ok)
        self.presentViewController(alertView, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

