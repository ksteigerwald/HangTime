//
//  DiscoverView.swift
//  HangTime
//
//  Created by Kris Steigerwald on 10/22/22.
//

import SwiftUI

struct DiscoverView: View {
    @EnvironmentObject var matches: MatchMaker
    private var people: [String] = ["Mario", "Lugi", "Peach", "Toad", "Daisy"].reversed()
    
    var body: some View {
        if matches.showingFriend == false && matches.selectFriend == nil {
            VStack {
                ZStack {
                    ForEach(friends) { friend in
                        CardView(person: friend)
                    }
                }
            }
        } else {
            DiscoverDetailView()
        }
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
