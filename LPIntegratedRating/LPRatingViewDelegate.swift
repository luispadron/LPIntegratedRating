//
//  LPRatingViewDelegate.swift
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

public protocol LPRatingViewDelegate: class {
    func ratingViewConfiguration(_ view: LPRatingView, for state: LPRatingViewState) -> LPRatingViewConfiguration?
    func ratingViewDidFinish(_ view: LPRatingView, with status:  LPRatingViewCompletionStatus)
    func performOutAnimation(for view: LPRatingView, from currentState: LPRatingViewState, to nextState: LPRatingViewState)
    func performInAnimation(for view: LPRatingView, from currentState: LPRatingViewState, to nextState: LPRatingViewState)
}

public extension LPRatingViewDelegate {
    public func performOutAnimation(for view: LPRatingView, from currentState: LPRatingViewState, to nextState: LPRatingViewState) {
        // Basic fade out animation
        UIView.animate(withDuration: view.animationDuration/2) {
            view.titleLabel.alpha = 0.0
            view.rejectionButton.alpha = 0.0
            view.approvalButton.alpha = 0.0
        }
    }
    
    public func performInAnimation(for view: LPRatingView, from currentState: LPRatingViewState, to nextState: LPRatingViewState) {
        // Basic fade in animation
        UIView.animate(withDuration: view.animationDuration/2) {
            view.titleLabel.alpha = 1.0
            view.rejectionButton.alpha = 1.0
            view.approvalButton.alpha = 1.0
        }
    }
    
}
