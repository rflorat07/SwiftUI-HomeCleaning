//
//  HeaderContainerView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 22/09/25.
//

import SwiftUI

struct HeaderContainerView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 28) {
                    
            locationHeader
            
            searchHeader
            
        }
        .frame(height: 150.0)
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 24.0)
        .background(.mainGreen)
        .clipShape(
            UnevenRoundedRectangle(
                cornerRadii: .init(
                    bottomLeading: 20.0,
                    bottomTrailing: 20.0
                )
            )
        )
        .overlay {
            Image("home-header")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, alignment: .bottomTrailing)
        }
    }
}

#Preview {
    HeaderContainerView()
}


extension HeaderContainerView {
    var locationHeader: some View {
        HStack() {
            VStack(alignment: .leading, spacing: 6) {
                Text("Location")
                    .font(.inter(fontStyle: .footnote))
                
                Text("New York, USA")
                    .font(.inter(fontWeight: .medium, fontStyle: .callout))
            }
            .foregroundColor(.white)
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 8)
                .fill(.white.opacity(0.17))
                .frame(width: 38.0, height: 38.0)
                .overlay {
                    Image(systemName: "bell.fill")
                        .font(.system(size: 20.0))
                        .foregroundColor(.white)
                }
        }
    }
    
    var searchHeader: some View {
        HStack() {
  
            HStack(spacing: 9) {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 18.0))
                    .foregroundColor(.mainGreen)
                
               Text("Search")
                    .font(.inter(fontStyle: .callout))
                    .foregroundColor(.secondaryBlack)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(13)
            .background(.lightWhite)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 8)
                .fill(.white)
                .frame(width: 44.0, height: 44.0)
                .overlay {
                    Image(systemName: "slider.horizontal.3")
                        .font(.system(size: 20.0))
                        .foregroundColor(.mainGreen)
                }
        }
    }
}
