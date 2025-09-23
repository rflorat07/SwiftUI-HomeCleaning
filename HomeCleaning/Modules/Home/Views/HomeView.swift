//
//  HomeView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 19/09/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
         ZStack {
             Color.white.ignoresSafeArea()
             
            VStack(spacing: 0) {
                HeaderContainerView()
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 30) {
                        SpecialOfferCarouselView()
                        
                        CategoriesCarouselView()
                    }
                }
                
            }
        } 
        
    }
}

#Preview {
    HomeView()
}
