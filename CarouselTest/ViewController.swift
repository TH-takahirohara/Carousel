//
//  ViewController.swift
//  CarouselTest
//
//  Created by hara on 2019/10/08.
//  Copyright © 2019 hara. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var imageNames = ["room_1", "room_2", "room_3", "room_4", "room_5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainCollectionView.delegate = self
        mainCollectionView.dataSource = self
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let mainLayout = UICollectionViewFlowLayout()
        mainLayout.scrollDirection = .horizontal
        let mainSize = mainCollectionView.frame.height
        mainLayout.itemSize = CGSize(width: mainSize, height: mainSize)
        mainCollectionView.collectionViewLayout = mainLayout
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let size = collectionView.frame.height
        layout.itemSize = CGSize(width: size, height: size)
        collectionView.collectionViewLayout = layout

    }
    
    // MARK: - UICollectionViewDataSource
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == mainCollectionView {
            let cell: MainCarouselCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCell", for: indexPath) as! MainCarouselCell
            
            cell.mainImageView.image = UIImage(named: imageNames[indexPath.row])
            
            return cell
            
        } else {
            let cell: CarouselCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CarouselCell
            
            cell.imageView.image = UIImage(named: imageNames[indexPath.row])
            
            return cell
            
        }
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    // MARK: - UICollectionViewDelegate
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.collectionView {
            self.mainCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        } else if collectionView == self.mainCollectionView {
            self.collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
    }
    
}

