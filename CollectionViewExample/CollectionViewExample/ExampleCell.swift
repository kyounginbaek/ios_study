//
//  ExampleCell.swift
//  CollectionViewExample
//
//  Created by BaekKyoung In on 2017. 4. 10..
//  Copyright © 2017년 BaekKyoung In. All rights reserved.
//

import UIKit

class ExampleCell: UICollectionViewCell {
    
    @IBOutlet weak var exampleImageView: UIImageView!
    
    override func awakeFromNib() {
        exampleImageView.contentMode = UIViewContentMode.scaleAspectFill
    }
}
