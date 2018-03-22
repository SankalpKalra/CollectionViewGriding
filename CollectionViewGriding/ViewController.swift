//
//  ViewController.swift
//  CollectionViewGriding
//
//  Created by Appinventiv on 26/02/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var images=["1","2","3","4","5","6","7","8","9","1","2","3","4","5","6","7","8","9","1","2","3","4","5","6","7","8","9","1","2","3","4","5","6","7","8","9","1","2","3","4","5","6","7","8","9","1","2","3","4","5","6","7","8","9"]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate=self
        collectionView.dataSource=self
        
        
        
        let imageSize=UIScreen.main.bounds.width/3-2
        let layout=UICollectionViewFlowLayout()
//        layout.sectionInset=UIEdgeInsetsMake(<#T##top: CGFloat##CGFloat#>, <#T##left: CGFloat##CGFloat#>, <#T##bottom: CGFloat##CGFloat#>, <#T##right: CGFloat##CGFloat#>)
        
        //layout.sectionInset=UIEdgeInsetsMake(2, 0, 2, 0)
        layout.itemSize=CGSize(width:imageSize, height: imageSize)
        layout.minimumInteritemSpacing=1
        layout.minimumLineSpacing=2
        collectionView.collectionViewLayout=layout
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "ImagesCell", for:indexPath) as! ImagesCollectionViewCell
        cell.imageOutlet.image=UIImage(named:images[indexPath.row] + ".jpg") 
        return cell
    }
}
