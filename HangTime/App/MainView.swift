//
//  MainView.swift
//  HangTime
//
//  Created by Kris Steigerwald on 10/21/22.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var matches: MatchMaker
    
    var handler: Binding<Int> {
        Binding(
            get: { matches.tabSelection },
            set: {
                switch $0 {
                case 1:
                    matches.tabSelection = 1
                case 2:
                    matches.tabSelection = 2
                default:
                    print($0)
                }
                matches.showingFriend = false
                matches.selectFriend = nil
            }
        )
    }
    
    var body: some View {
        VStack {
            NavigationBarView()
            TabView(selection: handler) {
                HomeView()
                    .tabItem({
                        Image(systemName: "house")
                        Text("Home")
                    })
                    .tag(1)
                DiscoverView()
                    .tabItem({
                        Image(systemName: "magnifyingglass")
                            .onTapGesture {
                            }
                        Text("Discover")
                    })
                    .tag(2)
            }
            .background(Color.pink.ignoresSafeArea())
        }
        .background(Color.pink.ignoresSafeArea(edges: .top))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(MatchMaker())
    }
}
