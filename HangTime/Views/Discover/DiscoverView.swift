//
//  DiscoverView.swift
//  HangTime
//
//  Created by Kris Steigerwald on 10/22/22.
//

import SwiftUI

struct DiscoverView: View {
    private var people: [String] = ["Mario", "Lugi", "Peach", "Toad", "Daisy"].reversed()
    
    var body: some View {
        VStack {
            ZStack {
                ForEach(people, id: \.self) { person in
                   CardView(person: person)
                }
            }
        }
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
