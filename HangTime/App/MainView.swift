//
//  MainView.swift
//  HangTime
//
//  Created by Kris Steigerwald on 10/21/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationBarView()
        TabView {
           HomeView()
                .tabItem({
                    Image(systemName: "house")
                    Text("Home")
                })
            DiscoverView()
                .tabItem({
                    Image(systemName: "magnifyingglass")
                    Text("Discover")
                })
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
