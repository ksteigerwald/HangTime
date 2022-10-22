//
//  NavigationBarDetailView.swift
//  HangTime
//
//  Created by Kris Steigerwald on 10/22/22.
//

import SwiftUI

struct NavigationBarDetailView: View {
    
    @EnvironmentObject var matches: MatchMaker
    
    var body: some View {
        HStack {
            Button {
                withAnimation(.easeIn) {
                    matches.selectFriend = nil
                    matches.showingFriend = false
                }
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            
        }
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
    }
}
