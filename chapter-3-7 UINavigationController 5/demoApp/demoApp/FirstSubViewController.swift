//
//  FirstSubViewController.swift
//  demoApp
//
//  Created by kris on 8/5/16.
//  Copyright © 2016 kris. All rights reserved.
//

import UIKit

class FirstSubViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "First Page"
        self.view.backgroundColor = UIColor.brownColor()
        
        let leftBar = UIBarButtonItem(barButtonSystemItem: .Refresh, target: self, action: #selector(FirstSubViewController.refresh))
        self.navigationItem.leftBarButtonItem = leftBar
        
        let rightBar = UIBarButtonItem(barButtonSystemItem: .Save, target: self, action: #selector(FirstSubViewController.save))
        self.navigationItem.rightBarButtonItem = rightBar
        
        let label = UILabel(frame: CGRectMake(0, 0, 180, 30))
        label.text = "hello word"
        label.textAlignment = .Center
        self.navigationItem.titleView = label
    }
    
    func refresh() {
        let alert = UIAlertController(title: "refresh", message: "refreshed", preferredStyle: .Alert)
        let ok = UIAlertAction(title: "ok", style: .Default, handler: nil)
        alert.addAction(ok)
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func save() {
        print("saved")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
