//
//  UsingNavigationPath.swift
//  Navigation
//
//  Created by Vitaliy Novichenko on 01.04.2025.
//

import SwiftUI

struct UsingNavigationPath: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                Section("Number") {
                    ForEach(0..<5) { i in
                        NavigationLink("Select Number \(i)", value: i)
                    }
                }
                Section("String") {
                    ForEach(0..<5) { i in
                        NavigationLink("Select String \(i)", value: String(i))
                    }
                }
            }
            .navigationDestination(for: Int.self) { selection in
                Text("You selected the number \(selection)")
            }
            .navigationDestination(for: String.self) { selection in
                Text("You selected the string \(selection)")
            }
            .toolbar {
                Button("Push 556") {
                    path.append(556)
                }
                Button("Push Hello") {
                    path.append("Hello")
                }
                Button("Push 556 and 444") {
                    path.append(556)
                    path.append(444)
                }
            }
        }
    }
}

#Preview {
    UsingNavigationPath()
}
