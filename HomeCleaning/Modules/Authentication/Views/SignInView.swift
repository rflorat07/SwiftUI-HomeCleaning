//
//  SignInView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 17/09/25.
//

import SwiftUI

struct SignInView: View {
    
    @StateObject private var viewModel = SigninViewModel()
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 32) {
                
                CustomHeaderView(
                    title: "Sign In",
                    subTitle: "Hi! Welcome back, you’ve been missed"
                )
                
                VStack(alignment: .leading, spacing: 12) {
                    
                    FloatingTextField(text: $viewModel.email, labelText: "Email")
                    
                    FloatingSecureField(text: $viewModel.password, labelText: "Password")
                    
                    NavigationLink(destination: Text("Forgot your password?")) {
                        Text("Forgot your password?")
                            .underline()
                            .font(.inter(fontWeight: .medium, fontStyle: .footnote))
                            .foregroundColor(.mainGreen)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                }
                
                
                Button {
                    viewModel.signIn()
                } label: {
                    Text("Sign In")
                        .withDefaultButtonFormatting()
                }
                
                TextDividerView(text: "Or sign in with")
                
                HStack(alignment: .center, spacing: 12) {
                    CircleButtonView(circleSize: 60, fillColor: .white, strokeColor: .stroke, iconName: "apple.logo", iconColor: .black )
                    
                    CircleButtonView(circleSize: 60, fillColor: .white, strokeColor: .stroke, iconName: "apple.logo", iconColor: .black )
                    
                    CircleButtonView(circleSize: 60, fillColor: .white, strokeColor: .stroke, iconName: "apple.logo", iconColor: .black )
                }
                
                HStack() {
                    Text("Don't have an account?")
                        .font(.inter(fontStyle: .footnote))
                        .foregroundColor(.mainBlack)
                    
                    NavigationLink(destination: Text("Create an account")) {
                        Text("Sign Up")
                            .font(.inter(fontWeight: .medium, fontStyle: .footnote))
                            .foregroundColor(.mainGreen)
                            .underline()
                    }
                }
                
            }
            .padding(24)
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    SignInView()
}
