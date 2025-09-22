//
//  WebImageView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 22/09/25.
//

import SwiftUI
import SDWebImageSwiftUI

struct WebImageView: View {
    let urlString: String
    
    var body: some View {
        // WebImage provides more advanced features
        WebImage(url: URL(string: urlString))
            .resizable()
            .indicator(.activity) // Show a loading indicator
            .scaledToFill()
    }
}

#Preview {
    WebImageView(urlString: randomImage)
}
