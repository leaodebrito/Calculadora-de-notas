//
//  Profile.swift
//  CalculadoraDeNotas
//
//  Created by Bruno Brito on 30/12/22.
//  bruno ama marina mais do que tudo na vida

import SwiftUI


struct Profile: View {
    
    @State var nomeEstudante: String = "Bruno Leão"
    @State var cursoEstudante: String  = "Arquitetura e Urbanismo"
    @State var instituicaoEstudante: String = "Universidade Federal da Bahia"
    
    
    //Variáveis temporárias

    
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
                    
                    
                }
                
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                        print("funcionando")
                    }, label: {
                        Image(systemName: "gearshape")
                    })
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
