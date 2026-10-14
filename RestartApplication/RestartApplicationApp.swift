//
//  RestartApplicationApp.swift
//  RestartApplication
//
//  Created by MacBook Pro on 14/10/2026.
//

import SwiftUI
import CoreData

@main
struct RestartApplicationApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
