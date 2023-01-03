//
//  DisciplineDetails.swift
//  Notas
//
//  Created by Bruno Brito on 02/01/23.
//

import SwiftUI

struct DisciplineDetails: View {
    
    @State var disciplina: Disciplina
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DisciplineDetails_Previews: PreviewProvider {
    static var previews: some View {
        DisciplineDetails(disciplina: Disciplina())
    }
}
