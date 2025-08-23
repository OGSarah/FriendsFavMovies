//
//  MovieDetail.swift
//  FriendsFavMovies
//
//  Created by Sarah Clark on 8/22/25.
//

import SwiftUI

struct MovieDetail: View {
    @Bindable var movie: Movie

    var body: some View {
        Form {
            TextField("Movie title", text: $movie.title)
            DatePicker("Release date", selection: $movie.releaseDate, displayedComponents: .date)
        }
    }

}

// MARK: - Previews
#Preview("Dark Mode") {
    MovieDetail(movie: SampleData.shared.movie)
        .preferredColorScheme(.dark)
}

#Preview("Light Mode") {
    MovieDetail(movie: SampleData.shared.movie)
        .preferredColorScheme(.light)
}
