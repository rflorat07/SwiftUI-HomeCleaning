//
//  SpecialOfferItemView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 22/09/25.
//

import SwiftUI

struct SpecialOfferItemView: View {
    
    let specialOffer: SpecialOffer
    
    var body: some View {
        
            VStack(alignment: .leading, spacing: 10) {
                
                Text(specialOffer.offer)
                    .padding(.vertical, 4)
                    .padding(.horizontal, 8)
                    .background(.white)
                    .cornerRadius(50)
                    .font(.inter(fontWeight: .semibold, fontStyle:  .caption))
                
                Spacer()
                    .frame(height: 6)
                
                Text(specialOffer.title)
                    .font(.inter(fontWeight: .semibold, fontStyle:  .headline))
                    .foregroundColor(.white)
                
                HStack(alignment: .top, spacing: 2) {
                    Text(specialOffer.upTo)
                    
                    Text(specialOffer.discount)
                        .font(.inter(fontWeight: .semibold, fontStyle: .largeTitle))
                        .padding(.trailing, 4)
                }
                .foregroundColor(.white)
                .overlay(alignment: .bottomTrailing) {
                    ZStack {
                        Circle()
                            .frame(width: 16, height: 16)
                            .foregroundColor(.mainGreen)
                        
                        Image(systemName: "percent")
                            .font(.system(size: 8))
                            .bold()
                            .foregroundColor(.white)
                        
                    }
                    .offset(x: 0, y: -6)
                }
                
                
                Spacer()
                
                Text(specialOffer.services)
                    .font(.inter(fontWeight: .semibold, fontStyle:  .caption2))
                    .foregroundColor(.white)
                
            }
            .frame(height: 157)
            .frame(maxWidth: .infinity, alignment: .leading)
            .overlay(alignment: .bottomTrailing) {
                Text(specialOffer.cta)
                    .padding(.vertical, 6)
                    .padding(.horizontal, 12)
                    .background(.mainYellow)
                    .cornerRadius(50)
                    .font(.inter(fontWeight: .semibold, fontStyle:  .footnote))
                
            }
            .padding(13)
            .background(
//                LinearGradient(
//                    colors: [.black, .black.opacity(0.1)],
//                    startPoint: .leading, endPoint: .trailing)
                
                WebImageView(urlString: specialOffer.imageUrl)
            )
            .cornerRadius(16)
        }
    }

#Preview {
    SpecialOfferItemView(specialOffer: specialOffers[0])
        .padding(24)
}
