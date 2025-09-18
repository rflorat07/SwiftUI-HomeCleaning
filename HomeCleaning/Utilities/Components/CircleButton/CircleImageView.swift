//
//  CircleImageView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 17/09/25.
//

import SwiftUI

struct CircleImageView: View {
    
    let imageName: String
    var circleSize: CGFloat = 60
    var imageSize: CGFloat = 24
    var fillColor: Color = .white
    var strokeColor: Color = .stroke
    var strokeWidth: CGFloat = 0.99

    var body: some View {
        ZStack {
            // 1. Il Cerchio di sfondo (background)
            Circle()
                .fill(fillColor)
                .frame(width: circleSize, height: circleSize)
            
            // 2. Il Bordo del Cerchio (stroke)
            Circle()
                .stroke(strokeColor, lineWidth: strokeWidth)
                .frame(width: circleSize, height: circleSize)
            
            // 3. L'Icona al centro
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: imageSize, height: imageSize)
        }
    }
}

#Preview {
    CircleImageView(imageName: "apple-icon")
}
