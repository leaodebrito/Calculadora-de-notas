//
//  DisciplineDetails.swift
//  Notas
//
//  Created by Bruno Brito on 02/01/23.
//

import SwiftUI

struct DisciplineDetails: View {
    
    @State var disciplina: Disciplina
    
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        
       
        NavigationStack{
            ScrollView{
                VStack{
                    
                    HStack{
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .padding(.leading, 20)
                                .frame(height: 230)
                                .foregroundColor(colorScheme == .dark ? cardColorDark : cardColor)
                            VStack{
                                HStack{
                                    Image(systemName: "number")
                                    Text("Média")
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal, 35)
                                .font(.title3)
                                .bold()
                                
                                Divider()
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.horizontal, 35)
                                
                                Text("X.X")
                                    .font(.title)
                                    .bold()
                            }
                        }
                        
                        Spacer()
                        
                        GradeTable(nota1: disciplina.nota1 ?? "0", nota2:  disciplina.nota2 ?? "0", nota3: disciplina.nota3 ?? "0", nota4: disciplina.nota4 ?? "0")
                        
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
