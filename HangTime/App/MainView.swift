//
//  MainView.swift
//  HangTime
//
//  Created by Kris Steigerwald on 10/21/22.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var matches: MatchMaker
   
    init() {
    }
    
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
                Group {
                    HomeView()
                        .tabItem({
                            Label("Home", systemImage: "house")
                                .background(.black)
                        })
                        .toolbar(.visible, for: .tabBar)
                        .toolbarBackground(Color.pink, for: .tabBar)
                        .tag(1)
                    DiscoverView()
                        .tabItem({
                            Label("Discover", systemImage: "magnifyingglass")
                                .foregroundColor(.black)
                        })
                        .toolbar(.visible, for: .tabBar)
                        .toolbarBackground(Color.pink, for: .tabBar)
                        .tag(2)
                }
            }
            .onAppear {
                let appearance = UITabBarAppearance()
                appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
                appearance.backgroundColor = UIColor(Color.black.opacity(0.7))
                // Use this when scrolling
                UITabBar.appearance().standardAppearance = appearance
                
                // Use this when scrolled all the way up
                UITabBar.appearance().scrollEdgeAppearance = appearance
                UITabBar.appearance().unselectedItemTintColor = UIColor.white
            }
            .accentColor(.black)
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
