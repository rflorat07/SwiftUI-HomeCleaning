//
//  DefaultButton.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 18/09/25.
//

import SwiftUI

struct DefaultButton: View {
    
    let title: String
    let onButtonTapped: (() -> Void)?
    
    var body: some View {
        Button {
            onButtonTapped?()
        } label: {
            Text(title)
                .withDefaultButtonFormatting()
        }
    }
}

#Preview {
    DefaultButton(title: "Sign In", onButtonTapped: nil)
        .padding(24)
}
