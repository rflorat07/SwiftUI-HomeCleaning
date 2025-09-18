//
//  OnboardingViewModel.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 17/09/25.
//

import Foundation

final class OnboardingViewModel: ObservableObject {
    
    @Published var currentPage = 0
    @Published var isShowingSignIn = false
    @Published var onboardingPages: [Onboarding] = []
    
    init() {
        onboardingPages =        [
            Onboarding(
                title: [
                    "Explore ",
                    "Professional Services ",
                    "Provider"
                ],
                subtitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
                image: "onboarding_1"
            ),
            Onboarding(
                title: [
                    "Explore ",
                    "Services ",
                    "by interactive Map"
                ],
                subtitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
                image: "onboarding_2"
            ),
            Onboarding(
                title: [
                    "Engage in a ",
                    "Conversation with Service Provider",
                    ""
                ],
                subtitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
                image: "onboarding_3"
            )
        ]
    }
}
