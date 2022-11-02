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
        NavigationView {
            VStack(alignment: .leading) {
                Text("This is a home page")
                    .font(.title)
                VStack(alignment: .leading) {
                    Text("Clicques")
                        .padding(.top, 20)
                        .font(.title2)
                    Text("Things happening near you")
                        .font(.title3)
                        .padding(.bottom, 10)
                    ScrollView {
                        LazyVGrid(columns: gridLayout, spacing: 10) {
                            ForEach(activities) { activity in
                                NavigationLink(destination: CliqueDetailView(), label: {
                                        ActivityItemView(item: activity)
                                })
                            } //: LOOP
                        } //: GRID
                    }
                }
            }
            .padding(.horizontal, 15)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
