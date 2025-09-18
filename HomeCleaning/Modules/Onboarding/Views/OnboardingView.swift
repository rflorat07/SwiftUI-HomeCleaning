//
//  OnboardingView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 16/09/25.
//

import SwiftUI

struct OnboardingView: View {
    
    @State private var currentPage = 0
    @State private var isShowingSignIn = false
    @ObservedObject private var viewModel = OnboardingViewModel()
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 32) {
                
                Text("Skip")
                    .font(.inter(fontStyle: .body))
                    .foregroundStyle(.mainGreen,)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.horizontal, 24)
                    .onTapGesture {
                        isShowingSignIn = true
                    }
                
                TabView(selection: $currentPage) {
                    ForEach(0..<viewModel.onboardingPages.count, id: \.self) { index in
                        OnboardingSlideView(page: viewModel.onboardingPages[index])
                            .tag(index)
                            .transition(.slide)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .always))
                .animation(.default, value: currentPage)
                
                OnboardingNavigation(currentPage: $currentPage, isShowingSignIn: $isShowingSignIn, count: viewModel.onboardingPages.count)
                    .padding(.horizontal, 24)
                
                
                Spacer()
                
            } // VStack
            .navigationBarBackButtonHidden(true)
            .navigationDestination(isPresented: $isShowingSignIn) { SignInView() }
            
        } // NavigationStack
    }
}

#Preview {
    OnboardingView()
}
