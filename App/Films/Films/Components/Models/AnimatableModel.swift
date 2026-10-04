//
//  AnimatableModel.swift
//  Films
//
//  Created by Admin on 4/10/26.
//

import SwiftUI

struct AnimatableModel {
    let isAnimating: Bool
    let delay: TimeInterval
    
    init(isAnimating: Bool, delay: TimeInterval) {
        self.isAnimating = isAnimating
        self.delay = delay
    }
}
