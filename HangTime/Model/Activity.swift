//
//  Activity.swift
//  HangTime
//
//  Created by Kris Steigerwald on 10/22/22.
//

import Foundation

struct Category: Codable {
    let name: String
}

struct Locale: Codable {
    let zip: String
    let county: String
    let state: String
}

struct Activity: Codable, Identifiable {
    let id: Int
    let activity: String
    let categories: [Category]
    let image: String
    let locale: Locale
}
