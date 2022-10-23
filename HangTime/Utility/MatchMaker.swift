//
//  MatchMaker.swift
//  HangTime
//
//  Created by Kris Steigerwald on 10/22/22.
//

import Foundation

class MatchMaker: ObservableObject {
    @Published var showingFriend: Bool = false
    @Published var selectFriend: Friend? = nil
    @Published var tabSelection: Int = 1
    @Published var showingActivity: Bool = false
    @Published var selectActivity: Activity? = nil
}
