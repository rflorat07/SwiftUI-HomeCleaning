//
//  PopularServicesCarouselView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 23/09/25.
//

import SwiftUI

struct PopularServicesCarouselView: View {
    
    @ObservedObject var viewModel = PopularServicesCarouselViewModel()
    
    var body: some View {
        VStack(spacing: 12) {
            SectionHeadingView(title: "Popular Services", buttonTitle: "See all")
                .padding(.horizontal, 24)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(viewModel.services, id: \.self) { service in
                        PopularServicesItemView(service: service)
                    }
                }
                .padding(.leading, 24)
            }
        }
    }
}

#Preview {
    PopularServicesCarouselView()
}
