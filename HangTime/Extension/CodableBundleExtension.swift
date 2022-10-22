//
//  CodableBundleExtension.swift
//  HangTime
//
//  Created by Kris Steigerwald on 10/22/22.
//

import Foundation

extension Bundle {
    
    func decode<x: Decodable>(_ type: x.Type, from filename: String) -> x? {
        guard let json = url(forResource: filename, withExtension: nil) else {
            print("Failed to locate \(filename) in app bundle.")
            return nil
        }
        do {
            let jsonData = try Data(contentsOf: json)
            let decoder = JSONDecoder()
            let result = try decoder.decode(x.self, from: jsonData)
            return result
        } catch {
            print("Failed to load and decode JSON \(error)")
            return nil
        }
    }
}
