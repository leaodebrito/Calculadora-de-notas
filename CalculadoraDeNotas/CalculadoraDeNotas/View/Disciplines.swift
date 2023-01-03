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
    @FetchRequest(sortDescriptors: []) var disciplina: FetchedResults<Disciplina>
    
    
    @State var addNovaDisciplina: Bool = false
    
    var body: some View {
        NavigationStack{
            VStack{
                List(disciplina) { materia in
                    NavigationLink(destination: DisciplineDetails(disciplina: materia),
                                   label: {
                        cardDisciplina(nome: materia.nome ?? " - ")
                    })
                    
                }
                .listStyle(.plain)
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


struct cardDisciplina: View{
    
    @State var nome: String
    
    var body: some View{
        
        Text("\(nome)")
            .font(.title2)
            .bold()
        
        
    }
}
