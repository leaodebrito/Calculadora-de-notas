//
//  ContentView.swift
//  CalculadoraDeNotas
//
//  Created by Bruno Brito on 30/12/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
 
    var body: some View {
        
        TabView{
            Profile()
                .tabItem{
                    Label("Perfil", systemImage: "person")
                }
            
            Disciplines()
                .tabItem{
                    Label("Disciplinas", systemImage: "list.bullet")
                }
            Calendar()
                .tabItem{
                    Label("Calendário", systemImage: "calendar")
                }
            
        }
        
        
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
