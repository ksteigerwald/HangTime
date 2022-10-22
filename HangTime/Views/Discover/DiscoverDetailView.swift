//
//  DiscoverDetailView.swift
//  HangTime
//
//  Created by Kris Steigerwald on 10/22/22.
//

import SwiftUI

struct DiscoverDetailView: View {
    @EnvironmentObject var matches: MatchMaker
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct DiscoverDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverDetailView()
            .environmentObject(MatchMaker())
    }
}
