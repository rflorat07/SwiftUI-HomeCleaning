//
//  OnboardingView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 16/09/25.
//

import SwiftUI

struct OnboardingView: View {
    
    @State private var currentPage = 0
    
    @ObservedObject private var viewModel = OnboardingViewModel()
    
    var body: some View {
        VStack(alignment: .center, spacing: 32) {
            
            Text("Skip")
                .font(.inter(fontStyle: .body))
                .foregroundStyle(.mainGreen,)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.horizontal, 24)
            
            TabView(selection: $currentPage) {
                ForEach(0..<viewModel.onboardingPages.count, id: \.self) { index in
                    OnboardingSlideView(page: viewModel.onboardingPages[index])
                    .tag(index)
                    .transition(.slide)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .animation(.default, value: currentPage)
            
            OnboardingNavigation(currentPage: $currentPage, count: viewModel.onboardingPages.count)
                .padding(.horizontal, 24)
            
            
            Spacer()
        }
    }
}

#Preview {
    OnboardingView()
}
