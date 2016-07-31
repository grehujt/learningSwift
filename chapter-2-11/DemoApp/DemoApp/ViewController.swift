//
//  ViewController.swift
//  DemoApp
//
//  Created by kris on 7/31/16.
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
        
        let gesture = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.longPress(_:)))
        imageView.addGestureRecognizer(gesture)
    }
    
    func longPress(gesture: UILongPressGestureRecognizer) {
        if (gesture.state == UIGestureRecognizerState.Began) {
            let alertView = UIAlertController(title: "Info", message: "long press", preferredStyle: UIAlertControllerStyle.Alert)
            let okAction = UIAlertAction(title: "OK", style: .Default) { (action) in
        
            }
            alertView.addAction(okAction)
            self.presentViewController(alertView, animated: true, completion: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

