//
//  CompleteProfileViewModel.swiftt
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 18/09/25.
//

import Foundation

enum Gender: String, CaseIterable, Identifiable {
    case placeholder = "Select..."
    case male = "Man"
    case female = "Woman"
    case nonBinary = "Nonbinary"
    case other = "Other"

    var id: Self { self }
}

final class CompleteProfileViewModel: ObservableObject {

    @Published var name = ""
    @Published var phoneNumber = ""
    @Published var isLoading = false
    @Published var errorMessage: String?
    @Published var selectedGender: Gender = .placeholder
    
    func completeProfileSubmit() {
        print("Complete Profile submit...")
    }
            
}
