//
//  CustomTabItemView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 19/09/25.
//

import SwiftUI

struct CustomTabItemView: View {
    
    let text: String
    let tabIndex: Int
    let activeImage: String
    let inactiveImage: String
    
    @Binding var selectedTab: Int
    
    var body: some View {
        VStack(spacing: 7) {
                    
//            if selectedTab == tabIndex {
//                Circle()
//                    .trim(from: 0.0, to: 0.5)
//                    .fill(.mainGreen)
//                    .frame(width: 18, height: 18)
//            }

            Image(selectedTab == tabIndex ? activeImage : inactiveImage)
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
            
            Text(text)
                .font(.inter(fontWeight: .medium, fontStyle: .caption))
                .foregroundColor(selectedTab == tabIndex ? Color.mainGreen : Color.secondaryBlack)
        }
    }
}

#Preview {
    CustomTabItemView(text: "Home", tabIndex: 1, activeImage: "icon-home-tab-selected", inactiveImage: "icon-home-tab", selectedTab: .constant(1))
}
