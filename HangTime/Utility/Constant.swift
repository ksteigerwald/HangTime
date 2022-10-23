//
//  Constant.swift
//  HangTime
//
//  Created by Kris Steigerwald on 10/22/22.
//

import SwiftUI

//let friends: [Friend] = Bundle.main.decode([Friend].self, from: "friends.json")!
let friends: [Friend] = Bundle.main.decode([Friend].self, from: "friends.json")!
let activities: [Activity] = Bundle.main.decode([Activity].self, from: "activities.json")!
// LAYOUT
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

var categoryLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: columnSpacing), count: 1)
}
