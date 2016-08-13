# Use storyboard 4 -- Collection View

## To
- display collectin of images
- add UICollectionViewDataSource
- add UICollectionViewDelegate
- (code) implement collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
- (code) implement collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    + collectionView.dequeueReusableCellWithReuseIdentifier
    + cell.viewWithTag(1) as!
    + imageView.layer.opacity
- (code) collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
    + collectionView.cellForItemAtIndexPath
    + cell?.viewWithTag(1)

## Result

![img](p1.png)
---
![img](p2.png)
---
![img](p3.png)

