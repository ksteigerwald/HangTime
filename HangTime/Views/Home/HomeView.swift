//
//  HomeView.swift
//  HangTime
//
//  Created by Kris Steigerwald on 10/21/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var matches: MatchMaker
    
    var body: some View {
        VStack {
            Text("This is a home page")
                .font(.title)
            
            ScrollView {
                LazyVGrid(columns: gridLayout, spacing: 15) {
                    ForEach(activities) { activity in
                        ActivityItemView(item: activity)
                    } //: LOOP
                } //: GRID
                .padding(15)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
