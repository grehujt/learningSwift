//
//  SecondSubViewController.swift
//  demoApp
//
//  Created by kris on 8/5/16.
//  Copyright © 2016 kris. All rights reserved.
//

import UIKit

var pageNum = 0

class SecondSubViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        pageNum += 1
        self.title = "Page \(pageNum)"
        self.view.backgroundColor = UIColor.purpleColor()
        
        let push = UIButton(frame: CGRectMake(40, 120, 240, 40))
        push.setTitle("push", forState: .Normal)
        push.backgroundColor = UIColor.orangeColor()
        push.addTarget(self, action: #selector(SecondSubViewController.pushPage), forControlEvents: .TouchUpInside)
        self.view.addSubview(push)
        
        let pop = UIButton(frame: CGRectMake(40, 180, 240, 40))
        pop.setTitle("pop", forState: .Normal)
        pop.backgroundColor = UIColor.orangeColor()
        pop.addTarget(self, action: #selector(SecondSubViewController.popPage), forControlEvents: .TouchUpInside)
        self.view.addSubview(pop)
        
        let index = UIButton(frame: CGRectMake(40, 280, 240, 40))
        index.setTitle("goto index", forState: .Normal)
        index.backgroundColor = UIColor.orangeColor()
        index.addTarget(self, action: #selector(SecondSubViewController.gotoIndex), forControlEvents: .TouchUpInside)
        self.view.addSubview(index)
        
        let root = UIButton(frame: CGRectMake(40, 340, 240, 40))
        root.setTitle("goto root", forState: .Normal)
        root.backgroundColor = UIColor.orangeColor()
        root.addTarget(self, action: #selector(SecondSubViewController.gotoRoot), forControlEvents: .TouchUpInside)
        self.view.addSubview(root)
    }
    
    func pushPage() {
        let v = SecondSubViewController()
        self.navigationController?.pushViewController(v, animated: true)
    }
    
    func popPage() {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    func gotoIndex() {
        let v = self.navigationController?.viewControllers[0]
        self.navigationController?.popToViewController(v!, animated: true)
    }
    
    func gotoRoot() {
        self.navigationController?.popToRootViewControllerAnimated(true)
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
