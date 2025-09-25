//
//  PopularServicesItemView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 23/09/25.
//

import SwiftUI

struct PopularServicesItemView: View {
    
    let service: Service
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            
            popularServiceCard
            
            popularServiceInfo
        }
        .frame(width: 213, alignment: .top)
    }
}

#Preview {
    let services: [Service] = Bundle.main.decode("services.json")
    
   PopularServicesItemView(service: services[0])
}


extension PopularServicesItemView {
    var popularServiceCard: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                HStack(spacing: 3) {
                    Image("star-icon")
                        .foregroundColor(.secondaryYellow)
                    
                    Text("\(String(describing: service.rating))")
                        .font(.inter(fontWeight: .medium, fontStyle: .callout))
                    
                }
                .padding(.vertical, 4)
                .padding(.horizontal, 8)
                .background(.white)
                .cornerRadius(6)
                
                Spacer()
                
                RoundedRectangle(cornerRadius: 6)
                    .fill(.white)
                    .frame(width: 26.0, height: 26.0)
                    .overlay {
                        Image("bookmark-icon")
                            .foregroundColor(.mainGreen)
                    }
            }
            
            Spacer()
        }
        .padding(12)
        .frame( height: 113)
        .frame(maxWidth: .infinity, alignment: .top )
        .background(
            WebImageView(urlString: service.thumbnail)
        )
        .cornerRadius(10)
    }
    
    var popularServiceInfo: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(service.title)
                .font(.inter(fontWeight: .medium, fontStyle: .subheadline))
                .lineLimit(1)
                .foregroundColor(.mainBlack)
            
            HStack(alignment: .center, spacing: 6) {
                Image("person-icon")
                    .foregroundColor(.mainGreen)
                
                Text(service.name)
                    .font(.inter(fontStyle: .footnote))
                    .foregroundColor(.secondaryBlack)
            }
            
            Text(service.price.asCurrencyWith2Decimals())
                .font(.inter(fontWeight: .medium, fontStyle: .callout))
                .foregroundColor(.mainGreen)
                .padding(.top, 6)
            
        }
    }
}
