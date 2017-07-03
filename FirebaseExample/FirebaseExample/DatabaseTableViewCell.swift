//
//  DatabaseTableViewCell.swift
//  FirebaseExample
//
//  Created by BaekKyoung In on 2017. 5. 8..
//  Copyright © 2017년 BaekKyoung In. All rights reserved.
//

import UIKit

class DatabaseTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
