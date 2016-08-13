//
//  ViewController.swift
//  demoApp
//
//  Created by kris on 8/13/16.
//  Copyright © 2016 kris. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let images = ["p1", "p2", "p3", "p4", "p5", "p6", "p7", "p8", "p9"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let id = "reusedCell"
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(id, forIndexPath: indexPath)
        let imageView = cell.viewWithTag(1) as! UIImageView
        imageView.image = UIImage(named: images[indexPath.row])
        imageView.layer.opacity = 0.5
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let cell = collectionView.cellForItemAtIndexPath(indexPath)
        let imageView = cell?.viewWithTag(1)
        imageView?.layer.opacity = 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

