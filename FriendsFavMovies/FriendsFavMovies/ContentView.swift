//
//  ContentView.swift
//  FriendsFavMovies
//
//  Created by Sarah Clark on 8/21/25.
//

import SwiftData
import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView {
            Tab("Friends", systemImage: "person.and.person") {
                FriendList()
            }
            Tab("Movies", systemImage: "movieclapper.fill") {
                Text("Movies")
            }
        }
    }
}

// MARK: - Previews
#Preview("Dark Mode") {
    ContentView()
        .modelContainer(for: Friend.self, inMemory: true)
        .preferredColorScheme(.dark)
}

#Preview("Light Mode") {
    ContentView()
        .modelContainer(for: Friend.self, inMemory: true)
        .preferredColorScheme(.light)
}
