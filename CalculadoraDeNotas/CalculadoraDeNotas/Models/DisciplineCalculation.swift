//
//  DisciplineCalculation.swift
//  Notas
//
//  Created by Bruno Brito on 02/01/23.
//

import Foundation

struct DisciplineCalculation {
    
    var nota1: String = ""
    var nota2: String = ""
    var nota3: String = ""
    var nota4: String = ""
    var pesoNota1: String = ""
    var pesoNota2: String = ""
    var pesoNota3: String = ""
    var pesoNota4: String = ""
    var mediaInstituicao: String = ""
    var disciplinaConcluida: Bool = false
    
    
    init(nota1: String, nota2: String, nota3: String, nota4: String, pesoNota1: String, pesoNota2: String, pesoNota3: String, pesoNota4: String, mediaInstituicao: String, disciplinaConcluida: Bool){
        self.nota1 = nota1
        self.nota2 = nota2
        self.nota3 = nota3
        self.nota4 = nota4
        self.pesoNota1 = pesoNota1
        self.pesoNota2 = pesoNota2
        self.pesoNota3 = pesoNota3
        self.pesoNota4 = pesoNota4
        self.mediaInstituicao = mediaInstituicao
        self.disciplinaConcluida = disciplinaConcluida
    }
    
    
    private func STD(valor: String) -> Double{
        let formatter = NumberFormatter()
        formatter.locale = Locale(identifier: "pt_BR")
        formatter.numberStyle = .decimal
        let valorConvertido = formatter.number(from: valor) ?? 00

        return Double(truncating: valorConvertido)
    }
    
    func mediaDaDisciplina() -> Double{
        let media = (STD(valor: nota1) * STD(valor: pesoNota1)) + (STD(valor: nota2) * STD(valor: pesoNota2)) + (STD(valor: nota3) * STD(valor: pesoNota3)) + (STD(valor: nota4) * STD(valor: pesoNota4))
        
        return media
    }
    
    private func situacaoDoAluno() -> String{
        
        var situacaoDoAluno: String = ""
        
        if mediaDaDisciplina() > STD(valor: mediaInstituicao){
            situacaoDoAluno = "Aprovado(a)"
        }else{
            situacaoDoAluno = "Reprovado(a)"
        }
        
        return situacaoDoAluno
    }
    
    func status() -> String{
        
        var statusDoAluno: String = ""
        
        if disciplinaConcluida == false{
            statusDoAluno = "Disciplina em desenvolvimento"
        }else{
            statusDoAluno = situacaoDoAluno()
        }
        
        return statusDoAluno
    }
    
    func conjDeNotas() -> [Double]{
        return[STD(valor: nota1), STD(valor: nota2), STD(valor: nota3), STD(valor: nota4)]
    }
    

}
