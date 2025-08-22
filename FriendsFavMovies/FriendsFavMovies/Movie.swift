//
//  Movie.swift
//  FriendsFavMovies
//
//  Created by Sarah Clark on 8/22/25.
//

import Foundation
import SwiftData

@Model
class Movie {
    var title: String
    var releaseDate: Date

    init(title: String, releaseDate: Date) {
        self.title = title
        self.releaseDate = releaseDate
    }

    @MainActor static let sampleData = [
        Movie(title: "Idiocracy", releaseDate: Date(timeIntervalSinceReferenceDate: 178_848_000)),
        Movie(title: "American Psycho", releaseDate: Date(timeIntervalSinceReferenceDate: -22_636_800)),
        Movie(title: "Titanic", releaseDate: Date(timeIntervalSinceReferenceDate: -95_817_600)),
        Movie(title: "The Matrix", releaseDate: Date(timeIntervalSinceReferenceDate: -55_382_400)),
        Movie(title: "Finding Nemo", releaseDate: Date(timeIntervalSinceReferenceDate: 75_945_600)),
        Movie(title: "Inception", releaseDate: Date(timeIntervalSinceReferenceDate: 300_931_200))
    ]

}
