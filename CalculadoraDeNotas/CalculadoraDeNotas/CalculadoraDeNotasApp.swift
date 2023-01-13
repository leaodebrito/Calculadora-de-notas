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
    @StateObject private var dataControllerEstudante = DataControllerEstudante()

    var body: some Scene {
        WindowGroup {
            SplashView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environment(\.managedObjectContext, dataControllerEstudante.container.viewContext)
        }
    }
}
