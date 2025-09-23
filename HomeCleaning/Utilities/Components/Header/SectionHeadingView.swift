//
//  SectionHeadingView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 22/09/25.
//

import SwiftUI

struct SectionHeadingView: View {
    
    let title: String
    let buttonTitle: String
    var onTap: (() -> Void)? = nil
    
    var body: some View {
        HStack {
            Text(title)
                .font(.inter(fontWeight: .medium, fontStyle: .headline))
                .foregroundColor(.salonBlack)
            
            Spacer()
            
            Text(buttonTitle)
                .font(.inter(fontStyle: .footnote))
                .foregroundColor(.mainGreen)
                .onTapGesture {
                    onTap?()
                }
        }
    }
}

#Preview {
    SectionHeadingView(title: "#SpecialForYou", buttonTitle: "See All")
        .padding(24)
}
