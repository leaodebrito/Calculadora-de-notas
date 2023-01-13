//
//  Disciplines.swift
//  CalculadoraDeNotas
//
//  Created by Bruno Brito on 30/12/22.
//

import CoreData
import SwiftUI

//TODO: - Adicionar exclusão de itens da lista
//TODO: - Adicionar a opção de procurar disciplina na lista

struct Disciplines: View {
    
    @Environment(\.managedObjectContext) private var moc
    @FetchRequest(sortDescriptors: [NSSortDescriptor(key: "semestre", ascending: true)]) var disciplina: FetchedResults<Disciplina>
    
    
    @State var addNovaDisciplina: Bool = false
    
    var body: some View {
        NavigationStack{
            VStack{
                
                List(disciplina) { materia in
                    NavigationLink(destination: DisciplineDetails(disciplina: materia),
                                   label: {
                        cardDisciplina(nome: materia.nome ?? " - ", semestre: materia.semestre ?? "-", media: materia.nota1 ?? "-")
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
                            .resizable()
                            .frame(width: 25, height: 25)
                            .bold()
                            .padding(.trailing)
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
    @State var semestre: String
    @State var media: String
    
    var body: some View{
        
        VStack{
            Text("\(nome)")
                .font(.title2)
                .bold()
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading)
            
            
            HStack{
                Text("\(semestre) semestre")
                    .padding(.leading)
                
                Spacer()
                
                Text("Média: \(media)")
                    .padding(.trailing)
            }
            .padding(.top,3)
        }
    }
}
