//
//  CustomHeaderView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 17/09/25.
//

import SwiftUI

struct CustomHeaderView: View {
    
    let title: String
    var subTitle: String? = nil
    var info: String? = nil
        
        var body: some View {
            VStack(alignment: .center, spacing: 16) {
                Text(title)
                    .font(.inter(fontWeight: .medium, fontStyle: .title))
                
                if let subTitle = subTitle {
                    Text(subTitle)
                        .font(.inter(fontStyle: .footnote))
                        .foregroundColor(.secondaryBlack)
                        .multilineTextAlignment(.center)
                }
                
                if let info = info {
                    Text(info)
                        .font(.inter(fontStyle: .footnote))
                        .foregroundColor(.secondaryBlack)
                        .multilineTextAlignment(.center)
                }
            }
        }
}

#Preview {
    CustomHeaderView(
        title: "Sign In",
        subTitle: "Hi! Welcome back, you’ve been missed"
    )
}
