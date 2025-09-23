//
//  SpecialOfferCarouselView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 22/09/25.
//

import SwiftUI

struct SpecialOfferCarouselView: View {
        
    @ObservedObject private var viewModel = SpecialOfferCarouselViewModel()
        
    var body: some View {
        VStack(alignment: .center, spacing: 12) {
            
            SectionHeadingView(title: "#SpecialForYou", buttonTitle: "See all")
                .padding(.horizontal, 24)
            
            TabView(selection: $viewModel.currentPage) {
                ForEach(0..<viewModel.specialOffers.count, id: \.self) { index in
                    SpecialOfferItemView(specialOffer: viewModel.specialOffers[index])
                        .padding(.horizontal,12)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            
            OnboardingDotNavigation(currentDot: $viewModel.currentPage, count: viewModel.specialOffers.count)
            
        }
        .frame(height: 246)
        .padding(.top, 24)
    }
}

#Preview {
    SpecialOfferCarouselView()
}
