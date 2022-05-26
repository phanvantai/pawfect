//
//  PawfectApp.swift
//  Pawfect
//
//  Created by Mobile Chainos on 26/05/2022.
//

import SwiftUI

@main
struct PawfectApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
