//
//  CircleButtonView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 17/09/25.
//

import SwiftUI

struct CircleButtonView: View {
    
    var circleSize: CGFloat = 47 // Dimensione del cerchio
    var fillColor: Color = .mainGreen // Colore di sfondo del cerchio
    var strokeColor: Color = .mainGreen // Colore del bordo del cerchio
    var strokeWidth: CGFloat = 0.99   // Spessore del bordo
    var iconName: String = "arrow.right" // Nome dell'icona SF Symbols
    var iconColor: Color = .white   // Colore dell'icona

    var body: some View {
        ZStack {
            // 1. Il Cerchio di sfondo (background)
            Circle()
                .fill(fillColor) // Colore di riempimento del cerchio
                .frame(width: circleSize, height: circleSize)
            
            // 2. Il Bordo del Cerchio (stroke)
            Circle()
                .stroke(strokeColor, lineWidth: strokeWidth) // Colore e spessore del bordo
                .frame(width: circleSize, height: circleSize)
            
            // 3. L'Icona al centro
            Image(systemName: iconName)
                .resizable()
                .scaledToFit()
                .frame(width: circleSize * 0.35, height: circleSize * 0.35) // Dimensione dell'icona (es. 50% del cerchio)
                .foregroundColor(iconColor) // Colore dell'icona
        }
    }
}

#Preview {
    CircleButtonView()
    CircleButtonView(fillColor: .white, strokeColor: .mainGreen, iconName: "arrow.left", iconColor: .mainGreen)
}
