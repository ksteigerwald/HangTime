//
//  Friends.swift
//  HangTime
//
//  Created by Kris Steigerwald on 10/22/22.
//

import Foundation

class Friends: ObservableObject {
    @Published var showingFriend: Bool = true
    @Published var selectFriend: Friend? = nil
}
