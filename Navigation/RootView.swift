//
//  RootView.swift
//  Navigation
//
//  Created by Vitaliy Novichenko on 01.04.2025.
//

import SwiftUI

struct DetailsView: View {
    var number: Int
//    @Binding var path: [Int]
    @Binding var path: NavigationPath
    
    var body: some View {
        NavigationLink("Go to random number", value: Int.random(in: 0...1000))
            .navigationTitle("Number \(number)")
            .toolbar {
                Button("Home") {
//                    path.removeAll()
                    path = NavigationPath()
                }
            }
    }
}

struct RootView: View {
//    @State private var path = [Int]()
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            DetailsView(number: 0, path: $path)
                .navigationDestination(for: Int.self) { i in
                    DetailsView(number: i, path: $path)
                }
        }
    }
}

#Preview {
    RootView()
}
