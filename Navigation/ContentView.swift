//
//  ContentView.swift
//  Navigation
//
//  Created by Vitaliy Novichenko on 30.03.2025.
//

import SwiftUI

struct ContentView: View {
   // @State private var pathStore = PathStore()
    

    
    var body: some View {
        NavigationStack() {
            ZStack {
                LinearGradient(colors: [.teal,.gray], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
                NavigationLink {
                    
                        
                        PathsUsingCodable()
                        
                    
                } label: {
                    Text("Path using Codable")
                        .padding(20)
                        .font(.headline)
                        .foregroundStyle(.brown)
                        .background(.ultraThinMaterial)
                        .cornerRadius(14)
                    
                }
                
            }
            .navigationTitle("Navi")
            
        }
    }
}

#Preview {
    ContentView()
}
