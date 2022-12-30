//
//  Foto.swift
//  Notas
//
//  Created by Bruno Brito on 30/12/22.
//

import SwiftUI

struct Foto: View {
    var body: some View {
        Circle()
            .frame(width: 200, height: 200)
            .foregroundColor(.gray)
    }
}

struct Foto_Previews: PreviewProvider {
    static var previews: some View {
        Foto()
    }
}
