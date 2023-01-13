//
//  ViewRouter.swift
//  Notas
//
//  Created by Bruno Brito on 13/01/23.
//

import Foundation
import SwiftUI

class ViewRouter: ObservableObject {
    
    //TODO: - Precisa criar os UserDefaults para que o erro de inicialização não aconteça. CRIAR TELA DE CADASTRO DE ESTUDANTE.
    init() {
        if !UserDefaults.standard.bool(forKey: "didLaunchBefore") || !UserDefaults.standard.bool(forKey: "usuarioLogado")  {
            UserDefaults.standard.set(true, forKey: "didLaunchBefore")
            currentPage = "OnboardingView"
        }else {
            currentPage = "ContentView"
        }
    }
    
    @Published var currentPage: String
    
}

