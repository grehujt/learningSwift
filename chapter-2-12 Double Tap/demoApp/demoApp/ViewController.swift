//
//  ViewController.swift
//  demoApp
//
//  Created by kris on 8/1/16.
//  Copyright © 2016 kris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let rect = CGRectMake(32, 80, 256, 256)
        let imageView = UIImageView(frame: rect)
        
        let image = UIImage(named: "poke")
        imageView.image = image
        
        imageView.userInteractionEnabled = true
        self.view.addSubview(imageView)
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.doubleTap))
        gesture.numberOfTapsRequired = 2
        gesture.numberOfTouchesRequired = 1
        imageView.addGestureRecognizer(gesture)
    }
    
    func doubleTap() {
        let alertView = UIAlertController(title: "Info", message: "double tap", preferredStyle: .Alert)
        let okAction = UIAlertAction(title: "ok", style: .Default) { (action) in
            
        }
        alertView.addAction(okAction)
        self.presentViewController(alertView, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

