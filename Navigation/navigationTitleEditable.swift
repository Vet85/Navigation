//
//  navigationTitleEditable.swift
//  Navigation
//
//  Created by Vitaliy Novichenko on 04.04.2025.
//

import SwiftUI

struct navigationTitleEditable: View {
    @State private var title = "SwiftUI"
    
    var body: some View {
        NavigationStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .navigationTitle($title)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    navigationTitleEditable()
}
