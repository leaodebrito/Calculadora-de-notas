//
//  StudentInformation.swift
//  Notas
//
//  Created by Bruno Brito on 30/12/22.
//

import SwiftUI

struct StudentInformation: View {
    
    @State var nomeEstudante: String = "lorem ipsum"
    @State var curso: String = "lorem ipsum"
    @State var instituicao: String = "lorem ipsum"
    
    var body: some View {
        VStack{
            Text(nomeEstudante)
                .frame(minWidth: 200, idealWidth: 250, maxWidth: .infinity)
                .font(.title)
                .bold()
            
            Text(curso)
                .frame(minWidth: 200, idealWidth: 250, maxWidth: .infinity)
                .font(.body)
                . padding(.bottom, 5)
            
            Text(instituicao)
                .frame(minWidth: 200, idealWidth: 250, maxWidth: .infinity)
                .font(.body)
        }
    }
}

struct StudentInformation_Previews: PreviewProvider {
    static var previews: some View {
        StudentInformation()
    }
}
