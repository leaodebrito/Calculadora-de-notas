//
//  DataController.swift
//  Notas
//
//  Created by Bruno Brito on 02/01/23.
//

import CoreData
import Foundation


//MARK: - CLASSE DE ARMAZENAMENTO DAS DISCIPLINAS
class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Disciplinas")
    
    init(){
        container.loadPersistentStores{ description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
            
        }
    }
}


//MARK: - CLASSE DE ARMAZENAMENTO DO(A) ESTUDANTE
class DataControllerEstudante: ObservableObject{
    let container = NSPersistentContainer(name: "Estudante")
    
    init(){
        container.loadPersistentStores{ description, error in
            
            if let error = error{
                print("Core Data failed to load: \(error.localizedDescription)")
                
            }
            
        }
    }
}
