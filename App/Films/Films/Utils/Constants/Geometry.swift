//
//  Spacing.swift
//  Films
//
//  Created by Admin on 4/10/26.
//

import Foundation

struct Geometry {
    struct Spacing {
        static let spaceOne = Spacing(spacing: 4)
        static let spaceTwo = Spacing(spacing: 8)
        static let spaceThree = Spacing(spacing: 12)
        static let spaceFour = Spacing(spacing: 16)
        static let spaceFive = Spacing(spacing: 20)
        static let spaceSix = Spacing(spacing: 24)
        static let spaceSeven = Spacing(spacing: 28)
        
        let spacing: CGFloat
        
        init(spacing: CGFloat) {
            self.spacing = spacing
        }
        
        func callAsFunction() -> CGFloat {
            self.spacing
        }
    }
    
    struct CornerRadius {
        static let radiusXS = CornerRadius.init(radius: 6)
        static let radiusSM = CornerRadius.init(radius: 10)
        static let radiusMD = CornerRadius.init(radius: 12)
        static let radiusLG = CornerRadius.init(radius: 16)
        static let radiusXL = CornerRadius.init(radius: 24)
        
        let radius: CGFloat
        
        init(radius: CGFloat) {
            self.radius = radius
        }
        
        func callAsFunction() -> CGFloat {
            self.radius
        }
    }
    
    struct Height {
        static let sizeTouch = Height(size: 44)
        static let sizeChip = Height(size: 40)
        static let sizeButtoM = Height(size: 52)
        static let sizeButtonL = Height(size: 56)
        static let sizeTabbar = Height(size: 84)
        
        let size: CGFloat
        
        init(size: CGFloat) {
            self.size = size
        }
        
        func callAsFunction() -> CGFloat {
            self.size
        }
    }
}
