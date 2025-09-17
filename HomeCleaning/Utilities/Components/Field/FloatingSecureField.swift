//
//  FloatingSecureField.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 17/09/25.
//

import SwiftUI

struct FloatingSecureField: View {
    
    @Binding var text: String
    @State private var isPasswordVisible = false

    let labelText: String
    var placeHolderText: String? = nil
    var textFieldHeight: CGFloat? = 42
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            
            Text(labelText)
                .font(.inter(fontStyle: .footnote))
                .foregroundStyle(.mainBlack)
            
            HStack(alignment: .center ,spacing: 2) {
                
                if isPasswordVisible {
                    TextField(placeHolderText ?? "", text: $text)
                        .font(.inter(fontStyle: .footnote))
                        .accentColor(.mainBlack)
                        .frame(height: textFieldHeight, alignment: .leading)
                } else {
                    SecureField(placeHolderText ?? "", text: $text)
                        .font(.inter(fontStyle: .footnote))
                        .accentColor(.mainBlack)
                        .frame(height: textFieldHeight, alignment: .leading)
                }

                
                Image(systemName: isPasswordVisible ? "eye.slash" : "eye")
                    .foregroundColor(.mainBlack)
                    .font(.system(size: 24))
                    .onTapGesture {
                        isPasswordVisible.toggle()
                    }
                
            }
            .padding(.horizontal, 16)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.black.opacity(0.1))
            )
        }
    }
}

#Preview {
    FloatingSecureField(text: .constant(""), labelText: "Password", placeHolderText: "****************")
        .padding(24)
}
