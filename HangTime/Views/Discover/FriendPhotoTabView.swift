//
//  FriendPhotoTabView.swift
//  HangTime
//
//  Created by Kris Steigerwald on 10/22/22.
//

import SwiftUI

struct FriendPhotoTabView: View {
    @State var friend: Friend
    var body: some View {
        TabView {
            ForEach(friend.photos) { photo in
                FriendPhotoView(photo: photo)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FriendPhotoTabView_Previews: PreviewProvider {
    static var previews: some View {
        FriendPhotoTabView(friend: friends[0])
            .background(Color.pink)
    }
}
