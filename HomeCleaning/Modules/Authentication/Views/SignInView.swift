//
//  SignInView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 17/09/25.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        VStack {
            CustomHeaderView(
                title: "Sign In",
                subTitle: "Hi! Welcome back, you’ve been missed"
            )
            
            TextField("Email", text: .constant(""))
                .textContentType(.emailAddress)
                .disableAutocorrection(true)
                .padding(.horizontal, 24)
                .overlay(
                     RoundedRectangle(cornerRadius: 8)
                         .stroke(.black.opacity(0.1), lineWidth: 1)
                         .frame(height: 42)
                 )
            
            SecureField("Password", text: .constant(""))
                .textContentType(.password)
                .overlay(
                     RoundedRectangle(cornerRadius: 8)
                         .stroke(.black.opacity(0.1), lineWidth: 1)
                         .frame(height: 42)
                 )
        }
        .padding(24)
    }
}

#Preview {
    SignInView()
}
