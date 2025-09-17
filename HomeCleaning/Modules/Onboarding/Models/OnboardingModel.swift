//
//  OnboardingModel.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 16/09/25.
//

import Foundation

struct Onboarding: Identifiable {
    var id = UUID().uuidString
    let title: [String]
    let subtitle: String
    let image: String
    
    static var onboardingArray: [Onboarding] {
         [
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
