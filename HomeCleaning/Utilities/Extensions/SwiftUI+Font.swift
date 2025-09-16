//
//  SwiftUI+Font.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 16/09/25.
//

import SwiftUI

extension Font {
    static func inter(fontStyle: Font.TextStyle = .body, fontWeight: Font.Weight = .regular) -> Font {
        return Font.custom(CustomFont(weight: fontWeight).rawValue, size: fontStyle.size)
    }
}

extension Font.TextStyle {
    
    var size: CGFloat {
        switch self {
        case .largeTitle:
            return 34
        case .title:
            return 24
        case .title2:
            return 22
        case .title3:
            return 20
        case .headline:
            return 18
        case .subheadline:
            return 17
        case .body:
            return 16
        case .callout:
            return 14
        case .footnote:
            return 12
        case .caption:
            return 10
        case .caption2:
            return 8
        @unknown default:
            return 8
        }
    }
}

enum CustomFont: String {
    
    case regular = "Inter-Regular"
    case medium = "Inter-Medium"
    case semibold = "Inter-Semibold"
    case bold = "Inter-Bold"
    
    init(weight: Font.Weight) {
        switch weight {
        case .regular:
            self = .regular
        case .medium:
            self = .medium
        case .semibold:
            self = .semibold
        case .bold:
            self = .bold
        default:
            self = .regular
        }
    }
}
