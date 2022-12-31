//
//  Profile.swift
//  CalculadoraDeNotas
//
//  Created by Bruno Brito on 30/12/22.
//  bruno ama marina mais do que tudo na vida

import SwiftUI

//TODO: - Implementar botão de configuração no Navigation Bar
///O .navigationBarItem vai ser descontinuado, e no lugar será usado .toolbar, porém o método não está funcionando direito, pesquisar o porque

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
                
                
                Form{
                    Group{
                        Image(systemName: "info.circle")
                        Text("Informações Gerais")
                    }
                    Group{
                        Text("Média Geral")
                        Text("Disciplinas cursadas")
                    }
                }
                
                
                
            }
            
        }
        
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
