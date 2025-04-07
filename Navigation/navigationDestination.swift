//
//  navigationDestination.swift
//  Navigation
//
//  Created by Vitaliy Novichenko on 01.04.2025.
//

import SwiftUI

struct Student: Hashable {
    var id = UUID()
    let name: String
    let age: Int
}

struct navigationDestination: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                NavigationLink("Selected \(i)", value: i)
            }
            .navigationDestination(for: Int.self) { selection in
                Text("You selected \(selection)")
                
            }
            .navigationDestination(for: Student.self, destination: { student in
                Text("You selected \(student.name)")
            })
            .navigationTitle("Navi destination")
            
        }
    }
}

#Preview {
    navigationDestination()
}
