//
//  Extensions.swift
//  DesignApp
//
//  Created by Maksim Shershun on 4/9/19.
//  Copyright © 2019 Maksim Shershun. All rights reserved.
//

import UIKit

extension UICollectionViewCell {
    class var identifier: String {
        return String(describing: self)
    }
}

extension UITableViewCell {
    class var identifier: String {
        return String(describing: self)
    }
}

extension NSLayoutConstraint {
    func constraintWithMultiplier(_ multiplier: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: self.secondAttribute, multiplier: multiplier, constant: self.constant)
    }
}
