//
//  FriendDetail.swift
//  FriendsFavMovies
//
//  Created by Sarah Clark on 8/22/25.
//

import SwiftUI

struct FriendDetail: View {
    @Bindable var friend: Friend

    var body: some View {
        Form {
            TextField("Name", text: $friend.name)
                .autocorrectionDisabled()
        }
    }

}

// MARK: - Previews
#Preview("Dark Mode") {
    FriendDetail(friend: SampleData.shared.friend)
        .preferredColorScheme(.dark)
}

#Preview("Light Mode") {
    FriendDetail(friend: SampleData.shared.friend)
        .preferredColorScheme(.light)
}
