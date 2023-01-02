//
//  CalculadoraDeNotasApp.swift
//  CalculadoraDeNotas
//
//  Created by Bruno Brito on 30/12/22.
//

import CoreData
import SwiftUI

@main
struct CalculadoraDeNotasApp: App {
    
    @StateObject private var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
