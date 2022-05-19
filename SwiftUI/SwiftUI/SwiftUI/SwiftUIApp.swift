//
//  SwiftUIApp.swift
//  SwiftUI
//
//  Created by vivek kasthuri on 24/10/21.
//

import SwiftUI

@main
struct SwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            Home()
        }
    }
}
