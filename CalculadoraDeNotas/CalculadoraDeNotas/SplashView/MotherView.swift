//
//  MotherView.swift
//  Notas
//
//  Created by Bruno Brito on 13/01/23.
//

import SwiftUI

struct MotherView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
            if viewRouter.currentPage == "OnboardingView" {
                Registration()
            } else if viewRouter.currentPage == "ContentView" {
                ContentView()
            }
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView().environmentObject(ViewRouter())
    }
}
