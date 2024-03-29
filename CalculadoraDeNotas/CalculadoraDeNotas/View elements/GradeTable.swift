//
//  GradeTable.swift
//  Notas
//
//  Created by Bruno Brito on 03/01/23.
//

import SwiftUI
import Charts


struct GradeTable: View {
    
    @State var nota1: String = ""
    @State var nota2: String = ""
    @State var nota3: String = ""
    @State var nota4: String = ""
    

    
    let cornerSize: CGFloat = 20
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: cornerSize)
                .frame(height: 230)
                .foregroundColor(colorScheme == .dark ? cardColorDark : cardColor)
            
            VStack{
                HStack{
                    Image(systemName: "number")
                        .foregroundColor(.red)
                    Text("Notas")
                }
                .frame(maxWidth: .infinity, maxHeight: 25, alignment: .leading)
                .padding(.horizontal, 12)
                .padding(.top, 24)
                .font(.title3)
                .bold()
                
                Divider()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 8)
                
                Spacer()
                
                HStack{
                    Image(systemName: "1.circle")
                    Text("Nota: \(nota1)")
                }
                .frame(maxWidth: .infinity, maxHeight: 25, alignment: .leading)
                .bold()
                .padding(.leading, 24)
                .padding(.bottom, 8)
                
                HStack{
                    Image(systemName: "2.circle")
                    Text("Nota: \(nota2)")
                }
                .frame(maxWidth: .infinity, maxHeight: 25, alignment: .leading)
                .bold()
                .padding(.leading, 24)
                .padding(.bottom, 8)
                
                HStack{
                    Image(systemName: "3.circle")
                    Text("Nota: \(nota3)")
                }
                .frame(maxWidth: .infinity, maxHeight: 25, alignment: .leading)
                .bold()
                .padding(.leading, 24)
                .padding(.bottom, 8)
                
                HStack{
                    Image(systemName: "4.circle")
                    Text("Nota: \(nota4)")
                }
                .frame(maxWidth: .infinity, maxHeight: 25, alignment: .leading)
                .bold()
                .padding(.leading, 24)
                .padding(.bottom, 16)
                
            }
        }
    }
}

struct GradeTable_Previews: PreviewProvider {
    static var previews: some View {
        GradeTable()
    }
}
