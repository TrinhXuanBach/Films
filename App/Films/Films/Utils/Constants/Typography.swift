//
//  Typography.swift
//  Films
//
//  Created by Admin on 4/10/26.
//

import UIKit
import SwiftUI

struct Typography {
    struct FontSize: RawRepresentable {
        typealias RawValue = CGFloat
        /// FontSize: 44.
        static let displayHero: FontSize = .init(44)
        
        /// FontSize: 38.
        static let titleXL: FontSize = .init(38)
        
        /// FontSize: 34.
        static let titleL: FontSize = .init(34)
        
        /// FontSize: 28.
        static let titleM: FontSize = .init(28)
        
        /// FontSize: 20.
        static let section: FontSize = .init(20)
        
        /// FontSize: 17.
        static let cardTitle: FontSize = .init(17)
        
        /// FontSize: 96.
        static let rank: FontSize = .init(96)
        
        /// FontSize: 16.
        static let bodyL: FontSize = .init(16)
        
        /// FontSize: 15.
        static let body: FontSize = .init(15)
        
        /// FontSize: 17.
        static let button: FontSize = .init(17)
        
        /// FontSize: 14.
        static let label: FontSize = .init(14)
        
        /// FontSize: 13.
        static let meta: FontSize = .init(13)
        
        /// FontSize: 12.
        static let overline: FontSize = .init(12)
        
        /// FontSize: 11.
        static let tab: FontSize = .init(11)
        
        let size: CGFloat
        let rawValue: CGFloat
        
        init?(rawValue: CGFloat) {
            self.rawValue = rawValue
            size = rawValue
        }
        
        init(_ custom: CGFloat) {
            size = custom
            rawValue = custom
        }
    }
}

extension Font {
    init(_ fontSize: Typography.FontSize, _ fontWeight: UIFont.Weight) {
        self.init(UIFont.systemFont(ofSize: fontSize.size, weight: fontWeight))
    }
}
