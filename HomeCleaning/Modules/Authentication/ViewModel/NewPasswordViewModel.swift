//
//  NewPasswordViewModel.swiftt
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 17/09/25.
//

import Foundation

final class NewPasswordViewModel: ObservableObject {

    @Published var password = ""
    @Published var confirmPassword = ""
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    func createNewPassword() {
        print("Create New Password...")
    }
            
}
