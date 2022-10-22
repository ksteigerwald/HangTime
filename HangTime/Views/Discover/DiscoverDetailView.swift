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
        ZStack {
            Color.pink.ignoresSafeArea(.all)
            VStack(alignment: .leading, spacing: 5) {
                Text("Hello world.")
            }
        }
        .background(Color.pink.ignoresSafeArea(.all))
    }
}

struct DiscoverDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverDetailView()
            .environmentObject(MatchMaker())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
