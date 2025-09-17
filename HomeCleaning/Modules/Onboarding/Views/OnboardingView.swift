//
//  OnboardingView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 16/09/25.
//

import SwiftUI

struct OnboardingView: View {
    
    @State private var currentTab = 0
    
    let onboardingArray = Onboarding.onboardingArray
    
    var body: some View {
        VStack(alignment: .center, spacing: 32) {
            
            Text("Skip")
                .font(.inter(fontStyle: .body))
                .foregroundStyle(.mainGreen,)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.horizontal, 24)
            
            TabView(selection: $currentTab) {
                ForEach(0..<onboardingArray.count, id: \.self) { index in
                    OnboardingSlideView(
                        image: onboardingArray[index].image,
                        title: onboardingArray[index].title,
                        subtitle: onboardingArray[index].subtitle
                    )
                    .tag(index)
                    .transition(.slide)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .animation(.default, value: currentTab)
            
            OnboardingNavigation(
                currentTab: $currentTab, count: onboardingArray.count
            ).padding(.horizontal, 24)
            
            
            Spacer()
        }
    }
}

#Preview {
    OnboardingView()
}
