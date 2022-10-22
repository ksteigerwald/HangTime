//
//  Friend.swift
//  HangTime
//
//  Created by Kris Steigerwald on 10/22/22.
//

import Foundation

struct Location: Codable {
    var lat: Double
    var long: Double
}

struct Profile: Codable {
    let firstName: String
    let lastName: String
    let dob: String
    let image: String
    let about: String
    var location: Location
}

struct Friend: Codable, Identifiable {
    let id: String
    let email: String
    let username: String
    let profile: Profile
    let createdAt: String
    let updatedAt: String
}
