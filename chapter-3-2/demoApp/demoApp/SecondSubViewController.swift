//
//  SecondSubViewController.swift
//  demoApp
//
//  Created by kris on 8/3/16.
//  Copyright © 2016 kris. All rights reserved.
//

import UIKit

class SecondSubViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Item #2"
        self.tabBarItem.image = UIImage(named: "p2")?.imageWithRenderingMode(.AlwaysOriginal)
        self.view.backgroundColor = UIColor.purpleColor()
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
