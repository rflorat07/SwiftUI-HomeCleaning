//
//  WelcomeView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 16/09/25.
//

import SwiftUI

struct WelcomeView: View {
    
    @State private var isShowingOnboarding = false
    
    var body: some View {            
            VStack(spacing: 35) {
                
                Image("welcome-header")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .frame(maxWidth: .infinity, maxHeight: 350)
                
                VStack(spacing: 24) {
                    Group {
                        Text("letsFind")
                            .foregroundColor(.mainBlack)
                        +
                        Text("professionalCleaningRepair")
                            .foregroundColor(.mainGreen)
                        +
                        Text("service")
                            .foregroundColor(.mainBlack)
                    }
                    .font(.inter(fontWeight: .semibold, fontStyle: .title))
                    
                    Text("loremIpsum")
                        .font(.inter(fontStyle: .callout))
                        .foregroundStyle(.secondaryBlack)
                        .multilineTextAlignment(.center)
                    
                    DefaultButton(title: "Let’s Get Started") {
                        isShowingOnboarding.toggle()
                    }
                    
                    HStack {
                        Text("alreadyAccount")
                            .font(.inter(fontStyle: .body))
                            .foregroundStyle(.mainBlack)
                        
                        NavigationLink(destination: SignInView()) {
                            Text("Sign In")
                                .font(.inter(fontWeight: .medium, fontStyle: .body))
                                .foregroundStyle(.secondaryGreen)
                                .underline()
                        }
                    }
                    
                }
                .padding(24)
                
            } // VStack
            .navigationDestination(isPresented: $isShowingOnboarding) {
                OnboardingView()
            }
    }
}

#Preview {
    NavigationStack {
        WelcomeView()
    }
}
