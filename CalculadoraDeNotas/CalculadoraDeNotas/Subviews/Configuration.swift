//
//  Configuration.swift
//  Notas
//
//  Created by Bruno Brito on 31/12/22.
//

import SwiftUI




struct Configuration: View {
    
    
    
    @State var cidade: String = "Salvador"
    @State var tipo: String = "Universidade"
    @State var instituicao: String = "Universidade Federal da Bahia"
    @State var media: Float = 7.0

    
    @State var notificacoes: Bool = UserDefaults.standard.bool(forKey: "notificacao")
    @State var promocoes: Bool = UserDefaults.standard.bool(forKey: "promocoes")
    
    
    
    
    var body: some View {
        NavigationStack{
            Form{
                Section(header: Text("Perfil do usuário")){
                    Text("Bruno Leão de Brito")
                    Text("Curso: ")
                    Text("Semestre: ")
                }
                
                Section(header: Text("Instituição de Ensino")){
                    Text(instituicao)
                    Text("Tipo: \(tipo)")
                    Text("Cidade: \(cidade)")
                    Text("Média: \(media, specifier: "%.2f")")
                }
                
                Section(header: Text("Notificações")){
                    Toggle("Permitir notificações", isOn: self.$notificacoes)
                    Toggle("Receber promoções", isOn: $promocoes)
                }
            }
            .navigationTitle("Configuração")
        }
    }
}

struct Configuration_Previews: PreviewProvider {
    static var previews: some View {
        Configuration()
    }
}



