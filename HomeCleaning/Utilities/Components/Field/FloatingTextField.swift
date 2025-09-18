//
//  FloatingTextField.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 17/09/25.
//

import SwiftUI

struct FloatingTextField: View {
    
    @Binding var text: String

    let labelText: String
    var leftIcon: String? = nil
    var rightIcon: String? = nil
    var placeHolderText: String? = nil
    var textFieldHeight: CGFloat? = 42
    var keyboardType: UIKeyboardType = .default
    var onRightIconPressed: (() -> Void)? = nil
    var onLeftIconPressed: (() -> Void)? = nil

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            
            Text(labelText)
                .font(.inter(fontStyle: .footnote))
                .foregroundStyle(.mainBlack)
            
            HStack(spacing: 2) {
                
               if let leftIcon = leftIcon {
                    Image(systemName: leftIcon)
                       .foregroundColor(.mainBlack)
                       .font(.system(size: 24))
                       .background(.red)
                       .onTapGesture {
                           onLeftIconPressed?()
                       }
                }
                
                TextField(placeHolderText ?? "", text: $text)
                    .keyboardType(keyboardType)
                    .font(.inter(fontStyle: .footnote))
                    .accentColor(.mainBlack)
                    .frame(height: textFieldHeight, alignment: .leading)
                
                if let rightIcon = rightIcon {
                     Image(systemName: rightIcon)
                         .foregroundColor(.mainBlack)
                         .font(.system(size: 24))
                         .onTapGesture {
                             onRightIconPressed?()
                         }
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
    FloatingTextField(text: .constant(""), labelText: "Email", rightIcon: "eye", placeHolderText: "example@gmail.com")
        .padding(24)
}
