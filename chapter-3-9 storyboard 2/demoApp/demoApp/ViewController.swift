//
//  ViewController.swift
//  demoApp
//
//  Created by kris on 8/9/16.
//  Copyright © 2016 kris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBAction func btnTapped(sender: AnyObject) {
        label.text = "hello world"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

