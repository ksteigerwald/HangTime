//
//  Friend.swift
//  HangTime
//
//  Created by Kris Steigerwald on 10/22/22.
//

import Foundation

struct Friend: Codable, Identifiable {
    let id: Int
    let image: String
    let firstName: String
}
