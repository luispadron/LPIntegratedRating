//
//  LPRatingCollectionViewCell.swift
//  LPIntegratedRating
//
//  Copyright (c) 2017 Luis Padron
//
//  Permission is hereby granted, free of charge, to any person obtaining a
//  copy of this software and associated documentation files (the "Software"),
//  to deal in the Software without restriction, including without limitation the
//  rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is furnished
//  to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included
// in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
//  INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND
//  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
//  FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT
//  OR OTHERWISE, ARISING FROM, OUT OF OR IN
//  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

import UIKit

open class LPRatingCollectionViewCell: UICollectionViewCell {
    
    // MARK: Properties
    
    open weak var delegate: LPRatingViewDelegate? {
        didSet {
            ratingView.delegate = self.delegate
        }
    }
    
    // MARK: Overrides
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        initCell()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initCell()
    }
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        // Set full frame for view inside content view
        ratingView.frame = contentView.bounds
    }
    
    // MARK: Methods
    
    private func initCell() {
        // Add view as subview
        self.contentView.addSubview(ratingView)
    }
    
    // MARK: Subviews
    
    open lazy var ratingView: LPRatingView = {
        let view = LPRatingView(frame: .zero)
        return view
    }()
}
