//
//  PathsUsingCodable.swift
//  Navigation
//
//  Created by Vitaliy Novichenko on 02.04.2025.
//

import SwiftUI

@Observable
class PathStore {
//    var path: [Int] {
    var path = NavigationPath() {
        didSet {
            save()
        }
    }
    private let savePath = URL.documentsDirectory.appending(path: "SavedPath")
    init() {
        if let data = try? Data(contentsOf: savePath) {
//            if let decoded = try? JSONDecoder().decode([Int].self, from: data) {
            if let decoded = try? JSONDecoder().decode(NavigationPath.CodableRepresentation.self, from: data) {
//                path = decoded
                path = NavigationPath(decoded)
                return
            }
        }
//        path = []
        path = NavigationPath()
    }
    func save() {
        guard let representation = path.codable else { return }
        do {
//            let data = try JSONEncoder().encode(path)
            let data = try JSONEncoder().encode(representation)
            try data.write(to: savePath)
        } catch {
            print("Failed to save navigation data")
        }
    }
}
struct DetailView: View {
    var number: Int
    
    var body: some View {
        NavigationLink("Go to random number", value: Int.random(in: 1...1000))
            .navigationTitle("Number \(number)")
            .toolbar {
                NavigationLink("HOME") {
                    ContentView()
                }
            }
    }
}


struct PathsUsingCodable: View {
//    @State private var path = NavigationPath()
    @State private var pathStore = PathStore()
    
    var body: some View {
//        NavigationStack(path: $path) {
        NavigationStack(path: $pathStore.path) {
            DetailView(number: 0)
                .navigationDestination(for: Int.self) { i in
                    DetailView(number: i)
                }
                
        }
        }
    }
#Preview {
    PathsUsingCodable()
}
