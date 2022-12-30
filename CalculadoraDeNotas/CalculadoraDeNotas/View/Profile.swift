//
//  Profile.swift
//  CalculadoraDeNotas
//
//  Created by Bruno Brito on 30/12/22.
//

import SwiftUI
import Photos
import PhotosUI

struct Profile: View {
    
    @State var nomeEstudante: String = "Bruno Leão"
    @State var cursoEstudante: String  = "Arquitetura e Urbanismo"
    @State var instituicaoEstudante: String = "Universidade Federal da Bahia"
    
    
    //Variáveis temporárias

    
    var body: some View {
        ScrollView{
            VStack{
                ZStack{
                    ProfileBackground()
                        .ignoresSafeArea()
                        .offset(y: -100)
                    Foto()
                        .offset(y: 30)
                        .shadow(radius: 20)
                }
                
                StudentInformation(nomeEstudante: nomeEstudante, curso: cursoEstudante, instituicao: instituicaoEstudante)
                    .padding(.bottom)
                
                Divider()
                    .padding(.bottom)
                
                SummaryCard(cornerSize: 20)
                
                
                
                
                
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
