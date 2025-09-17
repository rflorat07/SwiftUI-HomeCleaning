//
//  OnboardingNavigation.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 17/09/25.
//

import SwiftUI

struct OnboardingNavigation: View {
    
    @Binding var currentPage: Int
    
    let count: Int
    
    var body: some View {
        HStack {
            if currentPage > 0 {
                CircleButtonView(fillColor: .white, strokeColor: .mainGreen, iconName: "arrow.left", iconColor: .mainGreen)
                    .onTapGesture { currentPage -= 1 }
            } else {
                Circle()
                    .fill(.white)
                    .frame(width: 47, height: 47)
            }
            
            
            Spacer()
            
            OnboardingDotNavigation(currentDot: $currentPage, count: count)
            
            Spacer()
            
            CircleButtonView()
                .onTapGesture {
                    if currentPage == count - 1 {
                        /// LoginScreen
                    } else {
                        currentPage += 1
                    }
                }
        }
    }
}

#Preview {
    OnboardingNavigation(currentPage: .constant(1), count: 3)
        .padding(24)
}
