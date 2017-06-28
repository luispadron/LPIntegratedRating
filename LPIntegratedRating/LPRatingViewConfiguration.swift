//
//  LPRatingViewConfiguration.swift
//  LPIntegratedRating
//
//  Created by Luis Padron on 6/27/17.
//  Copyright © 2017 Luis Padron. All rights reserved.
//

import UIKit

public struct LPRatingViewConfiguration {
    public let title: NSAttributedString
    public let approvalButtonTitle: NSAttributedString
    public let rejectionButtonTitle: NSAttributedString
    
    public var backgroundColor: UIColor = UIColor.defaultColor
    public var approvalButtonColor: UIColor = UIColor.white
    public var rejectionButtonColor: UIColor = UIColor.defaultColor
    
    public init(title: NSAttributedString, approvalButtonTitle: NSAttributedString, rejectionButtonTitle: NSAttributedString) {
        self.title = title
        self.approvalButtonTitle = approvalButtonTitle
        self.rejectionButtonTitle = rejectionButtonTitle
    }
}
