//
//  DefaultButtonViewModifier.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 19/09/25.
//

import SwiftUI

struct DefaultButtonViewModifier: ViewModifier {
    
    let backgroundColor: Color
    
    func body(content: Content) -> some View {
        content
            .font(.inter(fontWeight: .medium, fontStyle: .body))
            .foregroundColor(.white)
            .frame(height: 48)
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .cornerRadius(78)
    }
}
