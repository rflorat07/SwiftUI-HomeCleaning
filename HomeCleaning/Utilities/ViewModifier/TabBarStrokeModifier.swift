//
//  TabBarStrokeModifier.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 19/09/25.
//

import SwiftUI

struct TabBarStrokeModifier: ViewModifier {
    var color: UIColor
    
    init(color: UIColor) {
        self.color = color
        
        // Creazione dell'aspetto personalizzato per la TabBar
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        
        // Impostazione del colore della linea superiore
        appearance.shadowColor = color
        
        // Assegna l'aspetto personalizzato alla TabBar
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    func body(content: Content) -> some View {
        content
    }
}
