//
//  OnboardingNavigation.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 17/09/25.
//

import SwiftUI

struct OnboardingNavigation: View {
    
    @Binding var currentTab: Int
    
    let count: Int
    
    var body: some View {
        HStack {
            if currentTab > 0 {
                CircleButtonView(fillColor: .white, strokeColor: .mainGreen, iconName: "arrow.left", iconColor: .mainGreen)
                    .onTapGesture { currentTab -= 1 }
            } else {
                Circle()
                    .fill(.white)
                    .frame(width: 47, height: 47)
            }
            
            
            Spacer()
            
            OnboardingDotNavigation(currentDot: $currentTab, count: count)
            
            Spacer()
            
            CircleButtonView()
                .onTapGesture {
                    if currentTab == count - 1 {
                        /// LoginScreen
                    } else {
                        currentTab += 1
                    }
                }
        }
    }
}

#Preview {
    OnboardingNavigation(currentTab: .constant(1), count: 3)
        .padding(24)
}
