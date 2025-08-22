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

}
