//
//  OnboardingSlideView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 16/09/25.
//

import SwiftUI

struct OnboardingSlideView: View {
    
    @State private var isAnimating = false
    
    let image: String
    let title: [String]
    let subtitle: String
    let screenHeight = UIScreen.main.bounds.height
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 24) {
            
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(height: screenHeight * 0.45)
                .frame(maxWidth: .infinity)
                .opacity(isAnimating ? 1 : 0)
            
            Group {
                Text(title[0])
                    .foregroundStyle(.mainBlack)
                +
                Text(title[1])
                    .foregroundStyle(.mainGreen)
                +
                Text(title[2])
                    .foregroundStyle(.mainBlack)
            }
            .multilineTextAlignment(.center)
            .font(.inter(fontWeight: .semibold, fontStyle: .title))
            .opacity(isAnimating ? 1 : 0)
            
            Text(subtitle)
                .font(.inter(fontStyle: .callout))
                .foregroundStyle(.secondaryBlack)
                .multilineTextAlignment(.center)
                .opacity(isAnimating ? 1 : 0)
            
        }
        .padding(.horizontal, 24)
        .onAppear(perform: {
            withAnimation(.linear(duration: 0.5)) {
                isAnimating = true
            }
        })
    }
}


#Preview {
    OnboardingSlideView(
        image: "onboarding_1",
        title: [
            "Explore ",
            "Professional Services ",
            "Provider"
        ],
        subtitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt"
    )
}
