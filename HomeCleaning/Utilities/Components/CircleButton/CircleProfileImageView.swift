//
//  CircleProfileImageView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 18/09/25.
//

import SwiftUI

struct CircleProfileImageView: View {
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(Color.background)
                    .frame(width: 118, height: 118)
                    
                Image(systemName: "person.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.secondaryBlack)
                
            }
            .overlay(alignment: .bottomTrailing) {
                ZStack {
                    Circle()
                        .fill(.white)
                        .frame(width: 32, height: 32)
                    
                    Circle()
                        .fill(.mainGreen)
                        .frame(width: 28, height: 28)
                    
                    Image(systemName: "highlighter")
                        .font(.system(size: 16))
                        .foregroundColor(.white)
                    
                }
            }
        }
    }
}

#Preview {
    CircleProfileImageView()
}
