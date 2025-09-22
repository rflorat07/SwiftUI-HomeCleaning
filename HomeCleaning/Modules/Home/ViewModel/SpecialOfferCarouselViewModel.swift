//
//  SpecialOfferCarouselViewModel.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 22/09/25.
//

import Foundation

final class SpecialOfferCarouselViewModel: ObservableObject {
    
    @Published var currentPage = 0
    @Published var specialOffers: [SpecialOffer] = []
    
    init() {
        self.specialOffers = getSpecialOffers()
    }
    
    func getSpecialOffers() -> [SpecialOffer] {
        return Bundle.main.decode("offers.json")
    }
}
