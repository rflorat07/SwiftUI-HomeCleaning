//
//  PrivacyPolicyView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 18/09/25.
//

import SwiftUI

struct PrivacyPolicyView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @StateObject private var viewModel = PrivacyPolicyViewModel()
    
    var body: some View {
        VStack {
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
                
                Spacer()
                
                Text("Privacy Policy")
                    .font(.inter(fontWeight: .medium, fontStyle: .body))
                    .foregroundColor(.mainBlack)
                    .padding(.trailing, 40)
                
                Spacer()
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 8) {
                    ForEach(viewModel.content) { item in
                        Text(item.section)
                            .font(.inter(fontWeight: .medium, fontStyle: .body))
                            .foregroundColor(.mainGreen)
                        
                        Text(item.content)
                            .font(.inter(fontStyle: .footnote))
                            .foregroundColor(.secondaryBlack)
                    }
                
                }
                .padding(.top, 24)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .scrollBounceBehavior(.basedOnSize)
        }
        .padding(24)
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    PrivacyPolicyView()
}
