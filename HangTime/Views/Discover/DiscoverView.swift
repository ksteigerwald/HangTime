//
//  DiscoverView.swift
//  HangTime
//
//  Created by Kris Steigerwald on 10/22/22.
//

import SwiftUI

struct DiscoverView: View {
    @EnvironmentObject var matches: MatchMaker
    
    var body: some View {
        if matches.showingFriend == false && matches.selectFriend == nil {
            VStack {
                ZStack {
                    ForEach(friends) { friend in
                        CardView(person: friend)
                            .onTapGesture {
                                matches.tabSelection = 2
                                matches.selectFriend = friend
                                matches.showingFriend = true
                            }
                    }
                }
            }
        } else {
            ZStack() {
                Color.pink.ignoresSafeArea()
                DiscoverDetailView(friend: matches.selectFriend ?? friends[0])
                Spacer()
            }
            .background(Color.pink.ignoresSafeArea(.all))
        }
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
            .environmentObject(MatchMaker())
    }
}
