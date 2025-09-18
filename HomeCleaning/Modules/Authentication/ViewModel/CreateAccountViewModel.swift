//
//  CreateAccountViewModel.swiftt
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 17/09/25.
//

import Foundation

final class CreateAccountViewModel: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var isChecked = false
    @Published var isLoading = false
    @Published var isAuthenticated = false
    @Published var errorMessage: String?
    
    func signUp() {
        print("Sign Up in...")
    }
            
}
