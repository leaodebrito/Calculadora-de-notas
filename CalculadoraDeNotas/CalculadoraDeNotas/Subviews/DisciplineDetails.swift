//
//  DisciplineDetails.swift
//  Notas
//
//  Created by Bruno Brito on 02/01/23.
//

import SwiftUI
import Charts

struct DisciplineDetails: View {
    
    @State var disciplina: Disciplina
    
    @State var acessarEdicaoDeDisciplina: Bool = false
    
    @Environment(\.colorScheme) var colorScheme
    
    let notas: [Semester] = [
        Semester(semester: "Nota 1", average: 10),
        Semester(semester: "Nota 2", average: 8.5),
        Semester(semester: "Nota 3", average: 6.5),
        Semester(semester: "Nota 4", average: 9.5),
    ]

    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    
                    HStack{
                        
                        AvaregeTable(media: "10,0", status: "Aprovado(a)")
                            .padding(.leading, 16)
                            .padding(.trailing, 6)
                        
                        Spacer()
                        
                        GradeTable(nota1: disciplina.nota1 ?? "0", nota2:  disciplina.nota2 ?? "0", nota3: disciplina.nota3 ?? "0", nota4: disciplina.nota4 ?? "0")
                            .padding(.leading, 6)
                            .padding(.trailing, 16)
                    }
                    
                    TituloSecoes(parametro: "Distribuição de Notas")
                        .padding(.leading, 16)
                        .padding(.vertical, 16)
                    
                    Chart(notas){ avaliacoes in
                        BarMark(
                            x: .value("Avaliações", avaliacoes.semester),
                            y: .value("Nota", avaliacoes.average)
                        )
                        .foregroundStyle(Color.blue.gradient)
                        
                    }
                    .frame(height: 200)
                    .padding(.horizontal, 16)
                    
                    
                    TituloSecoes(parametro: "Datas importantes")
                        .padding(.leading, 16)
                        .padding(.vertical, 16)
                    
                }
                .padding(.top)
            }
        }
        .navigationTitle(disciplina.nome ?? "Disciplina")
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing){
             Button(action: {
                 acessarEdicaoDeDisciplina.toggle()
             }, label: {
                 Image(systemName: "pencil")
                     .resizable()
                     .frame(width: 25, height: 25)
                     .bold()
                     .padding(.trailing)
             }).sheet(isPresented: $acessarEdicaoDeDisciplina){
                 EdicaoDisciplina()
             }
            }
        }
    }
}

struct DisciplineDetails_Previews: PreviewProvider {
    static var previews: some View {
        DisciplineDetails(disciplina: Disciplina())
    }
}



struct TituloSecoes: View{
    
    @State var parametro: String = "-"
    
    var body: some View{
        
        Text(parametro)
            .font(.title2)
            .bold()
            .frame(maxWidth: .infinity, alignment: .leading)
            
    }
}
