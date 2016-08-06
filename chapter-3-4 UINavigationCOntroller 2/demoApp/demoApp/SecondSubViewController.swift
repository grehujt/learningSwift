//
//  SecondSubViewController.swift
//  demoApp
//
//  Created by kris on 8/5/16.
//  Copyright © 2016 kris. All rights reserved.
//

import UIKit

class SecondSubViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Second Page"
        self.view.backgroundColor = UIColor.purpleColor()
        
        let btHide = UIButton(frame: CGRectMake(40, 200, 240, 30))
        btHide.setTitle("hide navi bar", forState: .Normal)
        btHide.backgroundColor = UIColor.orangeColor()
        btHide.addTarget(self, action: #selector(SecondSubViewController.hideNaviBar), forControlEvents: .TouchUpInside)
        self.view.addSubview(btHide)
        
        let btHideToolBar = UIButton(frame: CGRectMake(40, 260, 240, 30))
        btHideToolBar.setTitle("hide tool bar", forState: .Normal)
        btHideToolBar.backgroundColor = UIColor.orangeColor()
        btHideToolBar.addTarget(self, action: #selector(SecondSubViewController.hideToolBar), forControlEvents: .TouchUpInside)
        self.view.addSubview(btHideToolBar)
    }
    
    func hideNaviBar() {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func hideToolBar() {
        self.navigationController?.setToolbarHidden(true, animated: true)
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
