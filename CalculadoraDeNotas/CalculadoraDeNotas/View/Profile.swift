//
//  Profile.swift
//  CalculadoraDeNotas
//
//  Created by Bruno Brito on 30/12/22.
//  bruno ama marina mais do que tudo na vida

import SwiftUI


struct Profile: View {
    
    //Acesso a sheet de configuração
    @State var acessarConfiguracao: Bool = false
    
    //Mudança de cor conforme status do sistema
    @Environment(\.colorScheme) var colorScheme
    
    
    
    //Variáveis temporárias
    @State var nomeEstudante: String = "Bruno Leão"
    @State var cursoEstudante: String  = "Arquitetura e Urbanismo"
    @State var instituicaoEstudante: String = "Universidade Federal da Bahia"
    
    var body: some View {
        NavigationStack{
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
                    
                    SummaryCard(mediaGlobal: 9.2, semestre: 5, rankingNaInstituição: 20)
                    
                        
                    
                    
                }
                
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                        acessarConfiguracao.toggle()
                    }, label: {
                        Image(systemName: "gearshape")
                            .foregroundColor(.black)
                    }).sheet(isPresented: $acessarConfiguracao) {
                        Configuration()
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
