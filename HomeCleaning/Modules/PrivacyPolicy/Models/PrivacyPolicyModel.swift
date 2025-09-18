//
//  PrivacyPolicyModel.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 18/09/25.
//

import Foundation

struct PrivacyPolicyModel: Identifiable, Codable {
    var id = UUID().uuidString
    let section: String
    let content: String
}
