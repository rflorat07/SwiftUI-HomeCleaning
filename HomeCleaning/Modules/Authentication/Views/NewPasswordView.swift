//
//  NewPasswordView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 18/09/25.
//

import SwiftUI

struct NewPasswordView: View {
    @Environment(\.dismiss) var dismiss
    
    @StateObject private var viewModel = NewPasswordViewModel()
    
    var body: some View {
        ScrollView {
            VStack(spacing: 32) {
                
                NavigationBackButton()
 
                CustomHeaderView(
                    title: "New Password",
                    subTitle: "Your new password must be different from previously used passwords."
                )
                
                VStack(alignment: .leading, spacing: 19) {
                    
                    FloatingSecureField(text: $viewModel.password, labelText: "Password")
                    
                    FloatingSecureField(text: $viewModel.confirmPassword, labelText: "Confirm Password")
                }
                
                
                DefaultButton(title: "Create New Password") {
                    viewModel.createNewPassword()
                }
                
            }
            .padding(24)
            .navigationBarBackButtonHidden(true)
            
        }
        .scrollBounceBehavior(.basedOnSize)
    }
}

#Preview {
    NewPasswordView()
}
