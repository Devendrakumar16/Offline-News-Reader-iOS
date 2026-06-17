//
//  OfflineNewsAppApp.swift
//  OfflineNewsApp
//
//  Created by Devendra Kumar on 17/06/26.
//

import SwiftUI
import CoreData

@main
struct OfflineNewsAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
