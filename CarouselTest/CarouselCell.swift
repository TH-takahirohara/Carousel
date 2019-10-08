//
//  CarouselCell.swift
//  CarouselTest
//
//  Created by hara on 2019/10/08.
//  Copyright © 2019 hara. All rights reserved.
//

import UIKit

class CarouselCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}
