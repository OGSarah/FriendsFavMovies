//
//  FriendList.swift
//  FriendsFavMovies
//
//  Created by Sarah Clark on 8/22/25.
//

import SwiftData
import SwiftUI

struct FriendList: View {
    @Query(sort: \Friend.name) private var friends: [Friend]
    @Environment(\.modelContext) private var context

    var body: some View {
        List {
            ForEach(friends) { friend in
                Text(friend.name)
            }
        }
        .task {
            context.insert(Friend(name: "Rachel"))
            context.insert(Friend(name: "Orko"))
        }
    }
}

// MARK: Previews
#Preview("Dark Mode") {
    FriendList()
        .modelContainer(for: Friend.self, inMemory: true)
        .preferredColorScheme(.dark)
}

#Preview("Light Mode") {
    FriendList()
        .modelContainer(for: Friend.self, inMemory: true)
        .preferredColorScheme(.light)
}
