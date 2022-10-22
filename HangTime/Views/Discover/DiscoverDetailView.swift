//
//  DiscoverDetailView.swift
//  HangTime
//
//  Created by Kris Steigerwald on 10/22/22.
//

import SwiftUI

struct DiscoverDetailView: View {
    @State var friend: Friend
    
    var body: some View {
        VStack(spacing: 5) {
            FriendPhotoTabView(
                friend: friend)
        }
        .background(Color.pink.ignoresSafeArea(.all))
    }
}

struct DiscoverDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverDetailView(friend: friends[0])
            .environmentObject(MatchMaker())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
