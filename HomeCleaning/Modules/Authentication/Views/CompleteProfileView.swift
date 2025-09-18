//
//  CompleteProfileView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 18/09/25.
//

import SwiftUI

struct CompleteProfileView: View {
    @Environment(\.dismiss) var dismiss
    
    @StateObject private var viewModel = CompleteProfileViewModel()
    
    var body: some View {
        ScrollView {
            VStack(spacing: 32) {
                
                NavigationBackButton()
                
                CustomHeaderView(
                    title: "Complete Your Profile",
                    subTitle: "Don’t worry, only you can see your personal \ndata. No one else will be able to see it."
                )
                
                CircleProfileImageView()
                
                VStack(alignment: .leading, spacing: 19) {
                    FloatingTextField(text: $viewModel.name, labelText: "Name")
                    
                    FloatingTextField(text: $viewModel.phoneNumber, labelText: "Phone Number", placeHolderText: "Enter Phone Number", keyboardType: .numberPad)
                    
                    
                    VStack(alignment: .leading, spacing: 6) {
                        
                        Text("Gender")
                            .font(.inter(fontStyle: .footnote))
                            .foregroundStyle(.mainBlack)
                        
                        Menu {
                            ForEach(Gender.allCases) { gender in
                                Button(action: {
                                    self.viewModel.selectedGender = gender
                                }) {
                                    Text(gender.rawValue)
                                }
                            }
                        } label: {
                            HStack {
                                Text(viewModel.selectedGender.rawValue)
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
                
                DefaultButton(title: "Complete Profile") {
                    viewModel.completeProfileSubmit()
                }
                
            }
            .padding(24)
            .navigationBarBackButtonHidden(true)
            
        }
        .scrollBounceBehavior(.basedOnSize)
    }
}

#Preview {
    CompleteProfileView()
}
