//
//  ExampleTabBar.swift
//  CollectionViewExample
//
//  Created by BaekKyoung In on 2017. 4. 10..
//  Copyright © 2017년 BaekKyoung In. All rights reserved.
//

import UIKit

class ExampleTabBar: UITabBar {
    
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        return CGSize(width: size.width, height: 45)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        for (index, tabbarItem) in items!.enumerated() {
            
            tabbarItem.title = ""
            tabbarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
            
            if index == 0 {
                tabbarItem.image = UIImage(named: "Albums")?.withRenderingMode(.alwaysOriginal)
                tabbarItem.selectedImage = UIImage(named: "Albums-Selected")?.withRenderingMode(.alwaysOriginal)
            } else {
                tabbarItem.image = UIImage(named: "Notifications")?.withRenderingMode(.alwaysOriginal)
                tabbarItem.selectedImage = UIImage(named: "Notifications-Selected")?.withRenderingMode(.alwaysOriginal)
            }
            
            
            
            
        }
        
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
