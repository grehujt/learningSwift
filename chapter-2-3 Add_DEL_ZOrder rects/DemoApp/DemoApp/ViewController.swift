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
        
        let rect = CGRectMake(30, 50, 200, 200)
        let view = UIView(frame: rect)
        view.backgroundColor = UIColor.brownColor()
        self.view.addSubview(view)
        
        let btAdd = UIButton(frame: CGRectMake(30, 350, 80, 30))
        btAdd.backgroundColor = UIColor.grayColor()
        btAdd.setTitle("add", forState: .Normal)
        btAdd.addTarget(self, action: #selector(ViewController.addView(_:)), forControlEvents: .TouchUpInside)
        self.view.addSubview(btAdd)
        
        let btBack = UIButton(frame: CGRectMake(120, 350, 80, 30))
        btBack.backgroundColor = UIColor.grayColor()
        btBack.setTitle("switch", forState: .Normal)
        btBack.addTarget(self, action: #selector(ViewController.bringViewBack(_:)), forControlEvents: .TouchUpInside)
        self.view.addSubview(btBack)
        
        let btRemove = UIButton(frame: CGRectMake(210, 350, 80, 30))
        btRemove.backgroundColor = UIColor.grayColor()
        btRemove.setTitle("remove", forState: .Normal)
        btRemove.addTarget(self, action: #selector(ViewController.removeView(_:)), forControlEvents: .TouchUpInside)
        self.view.addSubview(btRemove)
    }
    
    func addView(sender: UIButton) {
        let rect = CGRectMake(60, 90, 200, 200)
        let view = UIView(frame: rect)
        view.backgroundColor = UIColor.purpleColor()
        // set tag for refence
        view.tag = 1
        self.view.addSubview(view)
    }
    
    func bringViewBack(sender: UIButton) {
        // use tag to find view
        let view = self.view.viewWithTag(1)
        self.view.sendSubviewToBack(view!)
    }
    
    func removeView(sender: UIButton) {
        let view = self.view.viewWithTag(1)
        view?.removeFromSuperview()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

