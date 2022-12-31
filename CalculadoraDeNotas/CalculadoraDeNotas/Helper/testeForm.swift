//
//  testeForm.swift
//  Notas
//
//  Created by Bruno Brito on 31/12/22.
//

import SwiftUI

struct testeForm: View {
    var body: some View {
        NavigationStack{
            Form{
                Group{
                    HStack{
                        Image(systemName: "info.circle")
                        Text("Informações Gerais")
                    }
                    .bold()
                }
                Group{
                    Text("Média Geral")
                    Text("Disciplinas cursadas")
                }
            }
            .navigationTitle("SwiftUI")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button("First") {
                        print("Pressed")
                    }
                    
                    Button("Second") {
                        print("Pressed")
                    }
                }
            }
        }
        
    }
}

struct testeForm_Previews: PreviewProvider {
    static var previews: some View {
        testeForm()
    }
}
