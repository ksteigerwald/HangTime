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
            
            VStack(alignment: .center, spacing: 0) {
                
                
                ScrollView (.vertical, showsIndicators: false) {
                    Text(friend.about)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                
            }
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
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
