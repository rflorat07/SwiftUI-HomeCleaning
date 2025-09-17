//
//  OnboardingSlideView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 16/09/25.
//

import SwiftUI

struct OnboardingSlideView: View {
    
    @State private var isAnimating = false
    
    let page: Onboarding
    let screenHeight = UIScreen.main.bounds.height
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 24) {
            
            Image(page.image)
                .resizable()
                .scaledToFit()
                .frame(height: screenHeight * 0.45)
                .frame(maxWidth: .infinity)
                .opacity(isAnimating ? 1 : 0)
            
            Group {
                Text(page.title[0])
                    .foregroundStyle(.mainBlack)
                +
                Text(page.title[1])
                    .foregroundStyle(.mainGreen)
                +
                Text(page.title[2])
                    .foregroundStyle(.mainBlack)
            }
            .multilineTextAlignment(.center)
            .font(.inter(fontWeight: .semibold, fontStyle: .title))
            .opacity(isAnimating ? 1 : 0)
            
            Text(page.subtitle)
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
    OnboardingSlideView(page: Onboarding(
        title: [
            "Explore ",
            "Professional Services ",
            "Provider"
        ],
        subtitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
        image: "onboarding_1"
        )
    )
}

