//
//  ProfileBackground.swift
//  Notas
//
//  Created by Bruno Brito on 30/12/22.
//

import SwiftUI

struct ProfileBackground: View {
    var body: some View {
        Rectangle()
            .ignoresSafeArea()
            .frame(height:300)
            .foregroundColor(.green)
    }
}

struct ProfileBackground_Previews: PreviewProvider {
    static var previews: some View {
        ProfileBackground()
    }
}
