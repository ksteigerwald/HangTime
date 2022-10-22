//
//  ContentView.swift
//  HangTime
//
//  Created by Kris Steigerwald on 10/21/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationBarView()
            
            ScrollView(.vertical, showsIndicators: false) {
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
