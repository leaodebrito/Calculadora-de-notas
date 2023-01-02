//
//  DisciplinesStruct.swift
//  Notas
//
//  Created by Bruno Brito on 02/01/23.
//

import Foundation


struct Semester: Identifiable{
    let id = UUID()
    let semester: String
    let average: Float
}
