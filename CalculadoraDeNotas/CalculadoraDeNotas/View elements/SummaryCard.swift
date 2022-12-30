//
//  SummaryCard.swift
//  Notas
//
//  Created by Bruno Brito on 30/12/22.
//

import SwiftUI

struct SummaryCard: View {
    
    @State var cornerSize: CGFloat = 20
    
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: cornerSize)
                .padding(.horizontal, 20)
                .frame(height: 150)
                .foregroundColor(cardColor)
            
            VStack{
                
            }
        }
    }
}

struct SummaryCard_Previews: PreviewProvider {
    static var previews: some View {
        SummaryCard()
    }
}
