//
//  NavigationBarView.swift
//  HangTime
//
//  Created by Kris Steigerwald on 10/21/22.
//

import SwiftUI

struct NavigationBarView: View {
    @EnvironmentObject var matches: MatchMaker
    
    var body: some View {
        if matches.showingFriend == false && matches.selectFriend == nil {
            HStack {
                Spacer()
                    .frame(maxWidth: .infinity, alignment: .leading)
                logo
                    .frame(maxWidth: .infinity, alignment: .center)
                profilePic
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .padding(.horizontal, 10)
        } else {
            NavigationBarDetailView()
                .background(.red)
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
        }
    }

    @ViewBuilder
    var logo: some View {
        Text("HangTime")
            .font(
                .custom("KaushanScript-Regular", size: 18))
        
    }
    
    @ViewBuilder
    var profilePic: some View {
        Image("UserOne")
            .frame(width: 50, height: 50)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.red, lineWidth: 2))
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .environmentObject(MatchMaker())
    }
}
