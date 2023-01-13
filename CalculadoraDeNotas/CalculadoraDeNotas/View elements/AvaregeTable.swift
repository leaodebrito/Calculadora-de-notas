//
//  AvaregeTable.swift
//  Notas
//
//  Created by Bruno Brito on 13/01/23.
//

import SwiftUI

struct AvaregeTable: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @State var media: String = "X.X"
    @State var status: String = "Aprovado(a)"
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 230)
                .foregroundColor(colorScheme == .dark ? cardColorDark : cardColor)
            
            VStack{
                    HStack{
                        Image(systemName: "number")
                            .foregroundColor(.red)
                        Text("Média")
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
                
                Text(media)
                    .font(.largeTitle)
                    .bold()
                    .frame(maxWidth: .infinity, maxHeight: 25, alignment: .center)
                
                Spacer()
                
                Text(status)
                    .font(.title3)
                    .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
                    .padding(.bottom, 12)
            }
            
        }
    }
}

struct AvaregeTable_Previews: PreviewProvider {
    static var previews: some View {
        AvaregeTable()
    }
}
