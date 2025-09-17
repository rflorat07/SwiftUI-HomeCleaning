//
//  WelcomeView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 16/09/25.
//

import SwiftUI

struct WelcomeView: View {
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
                        .foregroundStyle(.mainBlack)
                    +
                    Text("professionalCleaningRepair")
                        .foregroundStyle(.mainGreen)
                    +
                    Text("service")
                        .foregroundStyle(.mainBlack)
                }
                .font(.inter(fontWeight: .semibold, fontStyle: .title))
                
                Text("loremIpsum")
                    .font(.inter(fontStyle: .callout))
                    .foregroundStyle(.secondaryBlack)
                    .multilineTextAlignment(.center)
                
                Button {
                    
                } label: {
                    Text("welcomeButton")
                        .withDefaultButtonFormatting()
                }
                
                HStack {
                    Text("alreadyAccount")
                        .font(.inter(fontStyle: .body))
                        .foregroundStyle(.mainBlack)
                    
                    
                    Text("loginTitle")
                        .font(.inter(fontWeight: .medium, fontStyle: .body))
                        .foregroundStyle(.secondaryGreen)
                        .underline()
                        .onTapGesture {
                            print("SignIn")
                        }
                }
                                
            }
            .padding(24)
        }
    }
}

#Preview {
    WelcomeView()
}
