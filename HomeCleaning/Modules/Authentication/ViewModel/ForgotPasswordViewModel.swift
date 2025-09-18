//
//  ForgotPasswordViewModel.swiftt
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 17/09/25.
//

import Foundation

final class ForgotPasswordViewModel: ObservableObject {

    @Published var email = ""
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    func forgotPasswordSubmit() {
        print("Forgot password submit...")
    }
            
}
