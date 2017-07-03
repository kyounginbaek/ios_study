//
//  ExampleTableViewCell.swift
//  TableViewExample
//
//  Created by BaekKyoung In on 2017. 4. 3..
//  Copyright © 2017년 BaekKyoung In. All rights reserved.
//

import UIKit

class ExampleTableViewCell: UITableViewCell {
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        cellImageView.contentMode = UIViewContentMode.scaleAspectFill
        cellImageView.clipsToBounds = true
        
        cellImageView.layer.cornerRadius = 20
    }

}
