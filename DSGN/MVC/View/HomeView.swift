//
//  HomeView.swift
//  DSGN
//
//  Created by Bé Nhện Của Bé Thảo on 23/05/2018.
//  Copyright © 2018 NatsuSalamada. All rights reserved.
//

import UIKit

class HomeView: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    var scrollingTimer = Timer()
   
    
    var dataImages:[String] = ["image1.jpg","image2.jpg","image3.jpg"]
    var rowIndex = 0

    @IBOutlet weak var CollectionView: UICollectionView!
    @IBOutlet weak var PageControl: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollingTimer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector
            (HomeView.startTimer(theTimer:)), userInfo: rowIndex, repeats: true)

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataImages.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CustomCollectionViewCell
        print(indexPath.row)
        cell.myImages.image = UIImage(named: dataImages[indexPath.row])
        
        
        
       // print(scrollingTimer)
        
        return cell
    }
    @objc func startTimer(theTimer:Timer)
    {
        let numberOfrecords: Int = self.dataImages.count - 1
        if (rowIndex < numberOfrecords){
            rowIndex = (rowIndex + 1)
        }else{
            rowIndex = 0
        }
        UIView.animate(withDuration: 1.0, delay: 0, options: .curveEaseOut, animations: {
            self.CollectionView.scrollToItem(at: IndexPath(row: self.rowIndex, section: 0), at: .left, animated: true)
        }, completion: nil)
    }
    
}
