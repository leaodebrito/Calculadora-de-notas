//
//  SummaryCard.swift
//  Notas
//
//  Created by Bruno Brito on 30/12/22.
//

import SwiftUI

struct SummaryCard: View {
    
    
    @State var mediaGlobal: Float
    @State var semestre: Float
    @State var rankingNaInstituição: Float
    
    let paddingText: CGFloat = 3
    let cornerSize: CGFloat = 20
    
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: cornerSize)
                .padding(.horizontal, 20)
                .frame(height: 150)
                .foregroundColor(cardColor)
            
            VStack{
                TextoPadrao(imagemDoSistema: "info.circle", tipoInformacao: "Informações Gerais")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 30)
                .bold()
                
                Divider()
                    .padding(.horizontal, 30)
                
                HStack{
                    VStack{
                        TextoPadrao(imagemDoSistema: "", tipoInformacao: "Média global")
                            .padding(.vertical, paddingText)
                       
                        Text("\(mediaGlobal, specifier: "%.2f")")
                            .bold()
                            .font(.title2)
                        
                    }
                    
                    Spacer()
                    
                    VStack{
                        TextoPadrao(imagemDoSistema: "", tipoInformacao: "Semestre")
                            .padding(.vertical, paddingText)
                        Text("\(semestre, specifier: "%.0f")")
                            .bold()
                            .font(.title2)
                    }
                    
                    Spacer()
                    
                    VStack{
                        TextoPadrao(imagemDoSistema: "", tipoInformacao: "Ranking")
                            .padding(.vertical, paddingText)
                        
                        Text("\(rankingNaInstituição, specifier: "%.0f")")
                            .bold()
                            .font(.title2)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 40)
                
            }
        }
        
        
    }
}

struct SummaryCard_Previews: PreviewProvider {
    static var previews: some View {
        SummaryCard(mediaGlobal: 0, semestre: 0, rankingNaInstituição: 0)
    }
}



//Estrutua de texto padrão do card:
struct TextoPadrao: View{
    
    @State var imagemDoSistema: String
    @State var tipoInformacao: String
    
    var body: some View{
        
        HStack{
            Image(systemName: imagemDoSistema)
                .foregroundColor(.red)
            Text(tipoInformacao)
            
        }
        
    }
}


