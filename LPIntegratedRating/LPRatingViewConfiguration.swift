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
    let rejectionButtonTitle: NSAttributedString
    let approvalButtonTitle: NSAttributedString
    var backgroundColor: UIColor = UIColor.blue
    var acceptanceButtonColor: UIColor = UIColor.white
    var rejectionButtonColor: UIColor = UIColor.blue
    
    init(title: NSAttributedString, rejectionButtonTitle: NSAttributedString, approvalButtonTitle: NSAttributedString) {
        self.title = title
        self.rejectionButtonTitle = rejectionButtonTitle
        self.approvalButtonTitle = approvalButtonTitle
    }
}
