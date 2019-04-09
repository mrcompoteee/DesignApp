//
//  TotalUsersCell.swift
//  DesignApp
//
//  Created by Maksim Shershun on 4/8/19.
//  Copyright © 2019 Maksim Shershun. All rights reserved.
//

import UIKit

class TotalUsersCell: UICollectionViewCell {
    
    @IBOutlet weak var progressBar: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let headerView = Bundle.main.loadNibNamed(CircleProgressBar.identifier, owner:
            self, options: nil)?.first as? CircleProgressBar
        
        progressBar.addSubview(headerView!)
    }
}
