//
//  NotificationView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 19/09/25.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        VStack(spacing: 36) {
            
            CircleImageView(
              imageName: "notification-icon",
              circleSize: 118,
              imageSize: 56,
              fillColor: .background,
              strokeColor: .background
            )
            
            VStack(spacing: 16) {
                Text("Enable Notification Access")
                    .font(.inter(fontWeight: .semibold, fontStyle: .title))
                    .foregroundColor(.mainBlack)
                
                Text("Enable notifications to receive real-time updates.")
                    .font(.inter(fontStyle: .footnote))
                    .foregroundColor(.secondaryBlack)
            }
            
            DefaultButton(title: "Allow Notification", onButtonTapped: nil)
            
            NavigationLink(destination: NavigationTabView()) {
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
    NotificationView()
}
