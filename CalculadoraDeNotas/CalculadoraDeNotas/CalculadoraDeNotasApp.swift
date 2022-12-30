//
//  CalculadoraDeNotasApp.swift
//  CalculadoraDeNotas
//
//  Created by Bruno Brito on 30/12/22.
//

import SwiftUI

@main
struct CalculadoraDeNotasApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
