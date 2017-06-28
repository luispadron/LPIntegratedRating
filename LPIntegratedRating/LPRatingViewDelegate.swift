//
//  LPRatingViewDelegate.swift
//  LPIntegratedRating
//
//  Created by Luis Padron on 6/27/17.
//  Copyright © 2017 Luis Padron. All rights reserved.
//

public protocol LPRatingViewDelegate {
    func configuration(for state: LPRatingViewState) -> LPRatingViewConfiguration
}
