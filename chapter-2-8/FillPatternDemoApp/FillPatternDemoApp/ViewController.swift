//
//  ViewController.swift
//  FillPatternDemoApp
//
//  Created by kris on 6/8/16.
//  Copyright © 2016 kris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let image = UIImage(named: "water")
        let patternColor = UIColor.init(patternImage: image!)
        self.view.backgroundColor = patternColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

