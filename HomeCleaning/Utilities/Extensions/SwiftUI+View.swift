//
//  SwiftUI+View.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 16/09/25.
//

import SwiftUI

extension View {
    
    func withDefaultButtonFormatting(backgroundColor: Color = .mainGreen) -> some View {
        modifier(DefaultButtonViewModifier(backgroundColor: backgroundColor))
    }
    
    func tabBarStrokeColor(_ color: UIColor) -> some View {
        self.modifier(TabBarStrokeModifier(color: color))
    }
    
}
