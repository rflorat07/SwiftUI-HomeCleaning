//
//  ServiceModel.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 25/09/25.
//

import Foundation

// MARK: - ServiceModel
struct Service: Hashable, Codable {
    let id, name, title, description: String
    let address, category: String?
    let price, rating: Double
    let isBookmark: Bool?
    let phone: String?
    let reviews: [Review]?
    let images: [String]?
    let workingHours: [WorkingHour]?
    let geo: Geo?
    let thumbnail: String
}

// MARK: - Geo
struct Geo: Hashable, Codable {
    let lat, lng: Double?
}

// MARK: - Review
struct Review: Hashable, Codable {
    let rating: Double?
    let avatar: String?
    let comment, date, reviewerName, reviewerEmail: String?
}

// MARK: - WorkingHour
struct WorkingHour: Hashable, Codable {
    let label, hours: String?
}
