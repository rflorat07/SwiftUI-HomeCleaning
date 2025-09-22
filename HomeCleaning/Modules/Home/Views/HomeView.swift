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
             Color.background.ignoresSafeArea()
             
            VStack(spacing: 0) {
                HeaderContainerView()
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 30) {
                        
                        SpecialOfferCarouselView()
                            .frame(height: 246)
                            .padding(.top, 24)
                    }
                }
                
            }
        } 
        
    }
}

#Preview {
    HomeView()
}
