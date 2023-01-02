//
//  Persistence.swift
//  CalculadoraDeNotas
//
//  Created by Bruno Brito on 30/12/22.
//

/*
import CoreData

struct PersistenceController {
    static let shared = PersistenceController()

    static var preview: PersistenceController = {
        let result = PersistenceController(inMemory: true)
        let viewContext = result.container.viewContext
        for _ in 0..<10 {
            let disciplina = Disciplina(context: viewContext)
            disciplina.nomeDisciplina = ""
            disciplina.nota1 = 0.00
            disciplina.nota2 = 0.00
            disciplina.nota3 = 0.00
            disciplina.nota4 = 0.00
            disciplina.id = UUID()
            let estudante = Estudante(context: viewContext)
            estudante.nome = ""
            estudante.instituicao = ""
            estudante.curso = ""
            estudante.tipo = ""
        }
        do {
            try viewContext.save()
        } catch {
            // Replace this implementation with code to handle the error appropriately.
            // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
        return result
    }()

    let container: NSPersistentContainer

    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "CalculadoraDeNotas")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        container.viewContext.automaticallyMergesChangesFromParent = true
    }
}


*/
