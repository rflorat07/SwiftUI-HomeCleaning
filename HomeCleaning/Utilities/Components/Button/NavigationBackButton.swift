//
//  NavigationBarBackButton.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 18/09/25.
//

import SwiftUI

struct NavigationBackButton: View {
    
    @Environment(\.dismiss) var dismiss
    
    var title: String?
    
    var body: some View {
        HStack {
            CircleButtonView(
                circleSize: 40,
                fillColor: .white,
                strokeColor: .stroke,
                iconName: "arrow.left",
                iconColor: .mainBlack,
                onCircleButtonTapped: {
                    dismiss()
                }
            )
            
            if let title = title {
                Spacer()
                
                Text(title)
                    .font(.inter(fontWeight: .medium, fontStyle: .body))
                    .foregroundColor(.mainBlack)
                    .padding(.trailing, 40)
                
                Spacer()
            }
                    
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    NavigationBackButton(title: "Title")
        .padding(24)
}
