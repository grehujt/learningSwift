//
//  ViewController.swift
//  demoApp
//
//  Created by kris on 8/12/16.
//  Copyright © 2016 kris. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var arr = ["a", "b", "c", "d"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let id = "reusedCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(id)
        let label = cell?.viewWithTag(1) as! UILabel
        label.text = arr[indexPath.row]
        return cell!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

