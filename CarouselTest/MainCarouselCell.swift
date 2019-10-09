//
//  MainCarouselCell.swift
//  CarouselTest
//
//  Created by 原昂大 on 2019/10/10.
//  Copyright © 2019 hara. All rights reserved.
//

import UIKit

class MainCarouselCell: UICollectionViewCell {
    
    @IBOutlet weak var mainImageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
