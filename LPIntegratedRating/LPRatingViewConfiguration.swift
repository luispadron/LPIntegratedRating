//
//  LPRatingViewConfiguration.swift
//  LPIntegratedRating
//
//  Created by Luis Padron on 6/27/17.
//  Copyright © 2017 Luis Padron. All rights reserved.
//

import UIKit

public struct LPRatingViewConfiguration {
    let title: NSAttributedString
    let approvalButtonTitle: NSAttributedString
    let rejectionButtonTitle: NSAttributedString
    
    var backgroundColor: UIColor = UIColor(red: 0.376, green: 0.788, blue: 0.773, alpha: 1.00)
    var approvalButtonColor: UIColor = UIColor.white
    var rejectionButtonColor: UIColor = UIColor(red: 0.376, green: 0.788, blue: 0.773, alpha: 1.00)
    
    public init(title: NSAttributedString, approvalButtonTitle: NSAttributedString, rejectionButtonTitle: NSAttributedString) {
        self.title = title
        self.approvalButtonTitle = approvalButtonTitle
        self.rejectionButtonTitle = rejectionButtonTitle
    }
}
