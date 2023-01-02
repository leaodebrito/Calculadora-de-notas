//
//  Disciplines.swift
//  CalculadoraDeNotas
//
//  Created by Bruno Brito on 30/12/22.
//

import CoreData
import SwiftUI

struct Disciplines: View {
    
    @Environment(\.managedObjectContext) private var moc
    
    @FetchRequest(sortDescriptors: []) var disciplina: FetchedResults<Materia>
    
    
    @State var addNovaDisciplina: Bool = false
    
    var body: some View {
        NavigationStack{
            VStack{
                List(disciplina) { materia in
                    Text(materia.nome ?? "Desconhecido")
                }
            }
            .navigationTitle("Disciplinas")
            //Botão para criar nova disciplina
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    Button(action: {
                        addNovaDisciplina.toggle()
                    }, label: {
                        Image(systemName: "plus")
                    }).sheet(isPresented: $addNovaDisciplina){
                        NewDiscipline()
                    }
                }
            }
        }
    }
}

struct Disciplines_Previews: PreviewProvider {
    static var previews: some View {
        Disciplines()
    }
}
