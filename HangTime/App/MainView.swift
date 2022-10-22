//
//  MainView.swift
//  HangTime
//
//  Created by Kris Steigerwald on 10/21/22.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var matches: MatchMaker
    
    var body: some View {
        NavigationBarView()
        TabView(selection: $matches.tabSelection) {
            HomeView()
                .tabItem({
                    Image(systemName: "house")
                    Text("Home")
                })
                .tag(1)
            DiscoverView()
                .tabItem({
                    Image(systemName: "magnifyingglass")
                    Text("Discover")
                })
                .tag(2)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
