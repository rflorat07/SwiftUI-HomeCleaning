//
//  CreateAccountView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 17/09/25.
//

import SwiftUI

struct CreateAccountView: View {
    @Environment(\.dismiss) var dismiss
    
    @StateObject private var viewModel = CreateAccountViewModel()
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 32) {
                
                CustomHeaderView(
                    title: "Create Account",
                    subTitle: "Fill your information below or register with your social account.d"
                )
                
                VStack(alignment: .leading, spacing: 12) {
                    
                    FloatingTextField(text: $viewModel.name, labelText: "Name")
                    
                    FloatingTextField(
                        text: $viewModel.email,
                        labelText: "Email",
                        keyboardType: .emailAddress
                    )
                    
                    FloatingSecureField(text: $viewModel.password, labelText: "Password")
                    
                    HStack(alignment: .center, spacing: 2) {
                        
                        Image(systemName: viewModel.isChecked ? "checkmark.square.fill" : "square")
                            .foregroundColor(.mainGreen)
                            .font(.inter(fontStyle: .title3))
                            .onTapGesture {
                                viewModel.isChecked.toggle()
                            }
                        
                        
                        Text("Agree with")
                            .font(.inter(fontStyle: .callout))
                        
                        NavigationLink(destination: Text("Terms & Conditions")) {
                            Text("Terms & Conditions")
                                .underline()
                                .font(.inter(fontWeight: .medium, fontStyle: .callout))
                                .foregroundColor(.mainGreen)
                        }
                    }
                }
                
                
                DefaultButton(title: "Sign Up") {
                    viewModel.signUp()
                }
                
                
                TextDividerView(text: "Or sign up with")
                
                HStack(alignment: .center, spacing: 12) {
                    
                    CircleImageView(imageName: "apple-icon")
                    
                    CircleImageView(imageName: "google-icon")
                    
                    CircleImageView(imageName: "facebook-icon")
                }
                
                HStack() {
                    Text("Already have an account?")
                        .font(.inter(fontStyle: .footnote))
                        .foregroundColor(.mainBlack)
                    
                    Text("Sign In")
                        .font(.inter(fontWeight: .medium, fontStyle: .footnote))
                        .foregroundColor(.mainGreen)
                        .underline()
                        .onTapGesture {
                            dismiss()
                        }
                }
                
            }
            .padding(24)
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    CreateAccountView()
}
