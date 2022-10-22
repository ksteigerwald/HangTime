//
//  MainView.swift
//  HangTime
//
//  Created by Kris Steigerwald on 10/21/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
           HomeView()
                .tabItem({
                    Image(systemName: "house")
                    Text("Home")
                })
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
