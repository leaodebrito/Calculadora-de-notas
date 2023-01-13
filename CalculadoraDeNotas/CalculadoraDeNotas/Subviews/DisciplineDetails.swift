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
    
    @Environment(\.colorScheme) var colorScheme
    
    let notas: [Semester] = [
        Semester(semester: "Nota 1", average: 10),
        Semester(semester: "Nota 1", average: 8.5),
        Semester(semester: "Nota 1", average: 6.5),
        Semester(semester: "Nota 1", average: 9.5),
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
                    
                    
                    
                }
            }
        }
        .navigationTitle(disciplina.nome ?? "Disciplina")
    }
}

struct DisciplineDetails_Previews: PreviewProvider {
    static var previews: some View {
        DisciplineDetails(disciplina: Disciplina())
    }
}
