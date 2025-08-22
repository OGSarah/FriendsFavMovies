//
//  MovieList.swift
//  FriendsFavMovies
//
//  Created by Sarah Clark on 8/22/25.
//

import SwiftData
import SwiftUI

struct MovieList: View {
    @Query(sort: \Movie.title) private var movies: [Movie]
    @Environment(\.modelContext) private var context

    var body: some View {
        List {
            ForEach(movies) { movie in
                Text(movie.title)
            }
        }
    }
}

// MARK: - Previews
#Preview("Dark Mode") {
    MovieList()
        .preferredColorScheme(.dark)
}

#Preview("Light Mode") {
    MovieList()
        .preferredColorScheme(.light)
}
