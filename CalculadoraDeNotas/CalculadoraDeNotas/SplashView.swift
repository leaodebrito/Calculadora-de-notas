//
//  SplashView.swift
//  Notas
//
//  Created by Bruno Brito on 13/01/23.
//

import SwiftUI

struct SplashView: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
        VStack{
            if self.isActive{
                MotherView()
            }else{
                Image(systemName: "book")
                    .resizable()
                    .frame(width: 150, height: 150)
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: {
                withAnimation{
                    self.isActive = true
                }
            })
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
