//
//  SignInView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 17/09/25.
//

import SwiftUI

struct SignInView: View {
    
    @StateObject private var viewModel = AuthViewModel()
    
    var body: some View {
                ScrollView {
                    VStack(spacing: 32) {
                        
                        CustomHeaderView(
                            title: "Sign In",
                            subTitle: "Hi! Welcome back, you’ve been missed"
                        )
                        
                        VStack(alignment: .leading, spacing: 19) {
                            
                            FloatingTextField(text: $viewModel.email, labelText: "Email", keyboardType: .emailAddress)
                            
                            FloatingSecureField(text: $viewModel.password, labelText: "Password")
                            
                            NavigationLink(destination: ForgotPasswordView()) {
                                Text("Forgot your password?")
                                    .underline()
                                    .font(.inter(fontWeight: .medium, fontStyle: .footnote))
                                    .foregroundColor(.mainGreen)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                            }
                        }
                        
                        
                        DefaultButton(title: "Sign In") {
                            viewModel.signIn()
                        }
                        
                        
                        TextDividerView(text: "Or sign in with")
                        
                        HStack(alignment: .center, spacing: 12) {
                            
                            CircleImageView(imageName: "apple-icon")
                            
                            CircleImageView(imageName: "google-icon")
                            
                            CircleImageView(imageName: "facebook-icon")
                        }
                        
                        HStack() {
                            Text("Don't have an account?")
                                .font(.inter(fontStyle: .footnote))
                                .foregroundColor(.mainBlack)
                            
                            NavigationLink(destination: CreateAccountView()) {
                                Text("Sign Up")
                                    .font(.inter(fontWeight: .medium, fontStyle: .footnote))
                                    .foregroundColor(.mainGreen)
                                    .underline()
                            }
                        }
                    
                    }
                    .padding(24)
                    .navigationBarBackButtonHidden(true)
                    .navigationDestination(isPresented: $viewModel.isAuthenticated) {
                        LocationView()
                    }
                    
                }// ScrollView
                .scrollBounceBehavior(.basedOnSize)
            }
    }

#Preview {
    NavigationStack {
        SignInView()
    }
}
