//
//  TextDividerView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 17/09/25.
//

import SwiftUI

struct TextDividerView: View {
    
    let text: String
    
    var body: some View {
        
        HStack(spacing: 8) {
            
            Rectangle()
                .fill(.black.opacity(0.1))
                .frame(height: 1)
            
            Text(text)
                .font(.inter(fontStyle: .footnote))
                .foregroundColor(.secondaryBlack)
            
            Rectangle()
                .fill(.black.opacity(0.1))
                .frame(height: 1)
        }
        .padding(.horizontal, 32)
    }
}

#Preview {
    TextDividerView(text: "Or sign in with")
}
