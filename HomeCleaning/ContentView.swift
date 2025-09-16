//
//  ContentView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 16/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.mainGreen)
            Text("Hello, world!")
                .font(.inter(fontStyle: .largeTitle))
                .foregroundStyle(.mainGreen)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
