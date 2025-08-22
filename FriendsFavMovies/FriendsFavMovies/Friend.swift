//
//  Friend.swift
//  FriendsFavMovies
//
//  Created by Sarah Clark on 8/22/25.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String

    init(name: String) {
        self.name = name
    }

    @MainActor static let sampleData = [
        Friend(name: "Rachel"),
        Friend(name: "Eric"),
        Friend(name: "Kate"),
        Friend(name: "Molly"),
        Friend(name: "Orko")
    ]

}
