//
//  OnboardingDotNavigation.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 17/09/25.
//

import SwiftUI

struct OnboardingDotNavigation: View {
    
    @Binding var currentDot: Int
    
    let count: Int
    var dotWidth: CGFloat = 10
    var dotHeight: CGFloat = 10
    var currentDotWidth: CGFloat = 14
    var currentDotHeight: CGFloat = 14
    var dotColor: Color = .mainGreen
    var activeDotColor: Color = .mainGreen
    
    var body: some View {
        HStack{
            ForEach(0..<count, id: \.self) { index in
                Circle()
                    .fill(dotColor.opacity( currentDot == index ? 1 : 0.2))
                    .frame(
                        width: currentDot == index ? currentDotWidth : dotWidth,
                        height: currentDot == index ? currentDotHeight : dotHeight
                    )

            }
        }
    }
}

#Preview {
    OnboardingDotNavigation(currentDot: .constant(1) , count: 3)
}
