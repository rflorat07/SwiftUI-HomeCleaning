//
//  AuthViewModel.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 17/09/25.
//

import Foundation

final class AuthViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var isLoading = false
    @Published var isAuthenticated = false
    @Published var errorMessage: String?
    
    func signIn() {
        self.isAuthenticated = true
        print("Signing in...")
    }
    
    func forgotPassword() {
        print("Forgot password...")
    }
        
}
