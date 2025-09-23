//
//  SpecialOfferModel.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 22/09/25.
//

import Foundation

struct SpecialOffer: Hashable, Codable {
    let id: String
    let title: String
    let offer: String
    let discount: String
    let imageUrl: String
    let services: String
    let cta: String
    let upTo : String
}
