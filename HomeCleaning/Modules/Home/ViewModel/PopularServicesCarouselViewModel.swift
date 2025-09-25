//
//  PopularServicesCarouselViewModel.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 25/09/25.
//

import Foundation

class PopularServicesCarouselViewModel: ObservableObject {
    
    @Published var services: [Service] = []
    
    init() {
        self.services = getServices()
        print(services)
    }
    
    func getServices() -> [Service] {
        return Bundle.main.decode("services.json")
    }
}
