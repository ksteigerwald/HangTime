//
//  HangTimeApp.swift
//  HangTime
//
//  Created by Kris Steigerwald on 10/21/22.
//

import SwiftUI

@main
struct HangTimeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
