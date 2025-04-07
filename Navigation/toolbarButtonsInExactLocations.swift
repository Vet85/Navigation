//
//  toolbarButtonsInExactLocations.swift
//  Navigation
//
//  Created by Vitaliy Novichenko on 03.04.2025.
//

import SwiftUI

struct toolbarButtonsInExactLocations: View {
    var body: some View {
        NavigationStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .toolbar {
                    ToolbarItem(placement: .status) {
                        Button("Tap me") {
                            // action code
                        }
                    }
                }
                .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    toolbarButtonsInExactLocations()
}
