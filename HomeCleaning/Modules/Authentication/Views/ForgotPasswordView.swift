//
//  ForgotPasswordView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 18/09/25.
//

import SwiftUI

struct ForgotPasswordView: View {
    @Environment(\.dismiss) var dismiss
    
    @StateObject private var viewModel = ForgotPasswordViewModel()
    
    var body: some View {
        ScrollView {
            VStack(spacing: 32) {
                
                CircleButtonView(
                    circleSize: 40,
                    fillColor: .white,
                    strokeColor: .stroke,
                    iconName: "arrow.left",
                    iconColor: .mainBlack,
                ) {
                    dismiss()
                }
                .frame(maxWidth: .infinity, alignment: .leading)
 
                CustomHeaderView(
                    title: "Forgot your password?",
                    subTitle: "Don\'t worry sometimes people can forget too, enter your email and we will send you a password reset link."
                )
                
                FloatingTextField(text: $viewModel.email, labelText: "Email", keyboardType: .emailAddress)
                
                
                DefaultButton(title: "Submit") {
                    viewModel.forgotPasswordSubmit()
                }
                
            }
            .padding(24)
            .navigationBarBackButtonHidden(true)
            
        }
        .scrollBounceBehavior(.basedOnSize)
    }
}

#Preview {
    ForgotPasswordView()
}
