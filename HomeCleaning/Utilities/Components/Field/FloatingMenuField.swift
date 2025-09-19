//
//  FloatingMenuField.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 19/09/25.
//

import SwiftUI

struct FloatingMenuField: View {

    let labelText: String

    @Binding var selectedGender: Gender

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            
            Text(labelText)
                .font(.inter(fontStyle: .footnote))
                .foregroundStyle(.mainBlack)
            
            Menu {
                ForEach(Gender.allCases) { gender in
                    Button {
                        self.selectedGender = gender
                    } label: {
                        Text(gender.rawValue)
                    }
                }
            } label: {
                HStack {
                    Text(selectedGender.rawValue)
                        .font(.inter(fontStyle: .footnote))
                        .foregroundColor(.mainBlack)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.down")
                        .foregroundColor(.secondary)
                }
                .frame(height: 42)
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 14)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(.stroke, lineWidth: 0.99)
                )
            }
        }
    }
}

#Preview {
    FloatingMenuField(labelText: "Gender", selectedGender: .constant(.male))
        .padding(24)
}
