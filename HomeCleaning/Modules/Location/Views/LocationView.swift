//
//  LocationView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 19/09/25.
//

import SwiftUI

struct LocationView: View {
    var body: some View {
        VStack(spacing: 36) {
            
            CircleImageView(
                imageName: "location-icon",
                circleSize: 118,
                imageSize: 56,
                fillColor: .background,
                strokeColor: .background
            )
            
            VStack(spacing: 16) {
                Text("What is Your Location?")
                    .font(.inter(fontWeight: .semibold, fontStyle: .title))
                    .foregroundColor(.mainBlack)
                
                Text("To Find Nearby Service Provider.")
                    .font(.inter(fontStyle: .footnote))
                    .foregroundColor(.secondaryBlack)
            }
            
            DefaultButton(title: "Allow Location Access", onButtonTapped: nil)
            
            NavigationLink(destination: NotificationView()) {
                Text("Maybe Later")
                    .font(.inter(fontWeight: .medium, fontStyle: .body))
                    .foregroundColor(.mainGreen)
            }
        }
        .padding(24)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    LocationView()
}
