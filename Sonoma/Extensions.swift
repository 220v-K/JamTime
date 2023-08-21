//
//  Extensions.swift
//  Sonoma
//
//  Created by 이재원 on 2023/08/22.
//

import SwiftUI

extension Font {
    enum Tasa: String {
        case regular = "TASAExplorer-Regular"
        case medium = "TASAExplorer-Medium"
        case semibold = "TASAExplorer-SemiBold"
        case bold = "TASAExplorer-Bold"
        case black = "TASAExplorer-Black"
        
        func size(size: CGFloat) -> Font {
            return Font.custom(rawValue, size: size)
        }
    }
    
    enum Glossy: String {
        case regular = "Glossy Sheen Regular"
        
        func size(size: CGFloat) -> Font {
            return Font.custom(rawValue, size: size)
        }
    }
}

extension String {
    func containsWhitespace() -> Bool {
        return contains { $0.isWhitespace }
    }
}

