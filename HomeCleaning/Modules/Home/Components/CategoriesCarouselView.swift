//
//  CategoriesCarouselView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 23/09/25.
//

import SwiftUI

struct CategoriesCarouselView: View {
    
    @ObservedObject var viewModel = CategoriesCarouselViewModel()
    
    var body: some View {
        VStack(spacing: 12) {
            SectionHeadingView(title: "Categories", buttonTitle: "See all")
                .padding(.horizontal, 24)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 24) {
                    ForEach(viewModel.categories, id: \.self) { category in
                        CircleImageView(
                            imageName: category.icon,
                            text: category.label,
                            circleSize: 64,
                            imageSize: 30,
                            fillColor: .background,
                            strokeColor: .background
                        )
                    }
                }
                .padding(.leading, 24)
            }
        }
    }
}

#Preview {
    CategoriesCarouselView()
}
