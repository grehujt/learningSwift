//
//  ViewController.swift
//  demoApp
//
//  Created by kris on 8/11/16.
//  Copyright © 2016 kris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBAction func next(sender: AnyObject) {
        id = (id+1) % 3
        titleLabel.text = "p\(id)"
        imageView.image = UIImage(named: "p\(id)")
    }
    var id = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        titleLabel.text = "p\(id)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

