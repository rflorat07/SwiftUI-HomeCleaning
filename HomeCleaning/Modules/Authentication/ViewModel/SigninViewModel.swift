//
//  SigninViewModel.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 17/09/25.
//

import Foundation

final class SigninViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var isLoading = false
    @Published var isAuthenticated = false
    @Published var errorMessage: String?
    
    func signIn() {
        print("Signing in...")
    }
    
    func forgotPassword() {
        print("Forgot password...")
    }
        
}
