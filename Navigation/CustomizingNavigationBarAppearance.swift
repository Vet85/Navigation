//
//  CustomizingNavigationBarAppearance.swift
//  Navigation
//
//  Created by Vitaliy Novichenko on 03.04.2025.
//

import SwiftUI

struct CustomizingNavigationBarAppearance: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { row in
                Text("Row \(row)")
            }
            .navigationTitle("Title goes here")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.blue)
            .toolbarColorScheme(.dark)
            .toolbar(.hidden, for: .navigationBar)
        }
    }
}

#Preview {
    CustomizingNavigationBarAppearance()
}
