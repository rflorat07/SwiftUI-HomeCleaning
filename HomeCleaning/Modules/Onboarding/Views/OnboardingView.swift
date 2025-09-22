//
//  OnboardingView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 16/09/25.
//

import SwiftUI

struct OnboardingView: View {
    
    @ObservedObject private var viewModel = OnboardingViewModel()
    
    var body: some View {
            VStack(alignment: .center, spacing: 32) {
                
                Text("Skip")
                    .font(.inter(fontStyle: .body))
                    .foregroundStyle(.mainGreen,)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.horizontal, 24)
                    .onTapGesture {
                        viewModel.isShowingSignIn = true
                    }
                
                TabView(selection: $viewModel.currentPage) {
                    ForEach(0..<viewModel.onboardingPages.count, id: \.self) { index in
                        OnboardingSlideView(page: viewModel.onboardingPages[index])
                            .tag(index)
                            .transition(.slide)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .always))
                .animation(.default, value: viewModel.currentPage)
                
                OnboardingNavigation(
                    currentPage: $viewModel.currentPage,
                    isShowingSignIn: $viewModel.isShowingSignIn,
                    count: viewModel.onboardingPages.count
                )
                .padding(.horizontal, 24)
                
                
                Spacer()
                
            } // VStack
            .navigationBarBackButtonHidden(true)
            .navigationDestination(isPresented: $viewModel.isShowingSignIn) {
                    SignInView()
                }
    }
}

#Preview {
    NavigationStack {
        OnboardingView()
    }
}
