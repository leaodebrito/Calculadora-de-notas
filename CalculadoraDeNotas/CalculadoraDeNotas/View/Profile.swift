//
//  Profile.swift
//  CalculadoraDeNotas
//
//  Created by Bruno Brito on 30/12/22.
//  bruno ama marina mais do que tudo na vida

import SwiftUI
import Charts


struct Profile: View {
    
    //Acesso a sheet de configuração
    @State var acessarConfiguracao: Bool = false 
    
    //Mudança de cor conforme status do sistema
    @Environment(\.colorScheme) var colorScheme
    
    @State private var paddingPadraoH: CGFloat = 25
    
    
    //MARK: - Variáveis temporárias
    //Variáveis
    @State var nomeEstudante: String = "Bruno Leão"
    @State var cursoEstudante: String  = "Arquitetura e Urbanismo"
    @State var instituicaoEstudante: String = "Universidade Federal da Bahia"
    
    let semestres: [Semester] = [
        Semester(semester: "1", average: 9),
        Semester(semester: "2", average: 8.5),
        Semester(semester: "3", average: 7.5),
        Semester(semester: "4", average: 9.5),
        Semester(semester: "5", average: 8.5)
    ]
    
    
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
                        .padding(.bottom, 20)
                    
                    
                    Text("Média por semestre")
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(.leading, paddingPadraoH)
                        .font(.title2)
                    
                    
                    Chart(semestres){ semestre in
                        BarMark(
                            x: .value("Semestre", semestre.semester),
                            y: .value("Média", semestre.average)
                        )
                        .foregroundStyle(Color.blue.gradient)
                        
                    }
                    .frame(height: 250)
                    .padding(.horizontal, paddingPadraoH)
                    
                        
                    
                    
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
