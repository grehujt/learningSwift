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
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Bordered, target: self, action: #selector(FirstSubViewController.nextPage))
    }
    
    func nextPage() {
        let v2 = SecondSubViewController()
        self.navigationController?.pushViewController(v2, animated: true)
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
