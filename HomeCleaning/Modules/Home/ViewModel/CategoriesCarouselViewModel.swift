//
//  CategoriesCarouselViewModel.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 23/09/25.
//

import Foundation

final class CategoriesCarouselViewModel: ObservableObject {
    
    @Published var categories: [Category] = []
    
    init() {
        self.categories = getCategories()
    }
    
    func getCategories() -> [Category] {
        return Bundle.main.decode("categories.json")
    }
}
