//
//  NewDiscipline.swift
//  Notas
//
//  Created by Bruno Brito on 02/01/23.
//

import SwiftUI

//TODO: - Adicionar o dismiss keyboard ao tocar fora do textfield

struct NewDiscipline: View {
    
    //Persistência de dados
    @Environment(\.managedObjectContext) private var moc
    @FetchRequest(sortDescriptors: []) var disciplina: FetchedResults<Disciplina>
    
    //Fechar visualização do sheetview de criação de projeto
    @Environment (\.presentationMode) var presentationMode
    
    @State var nomeDisciplina: String = ""
    @State var nota1: String = ""
    @State var nota2: String = ""
    @State var nota3: String = ""
    @State var nota4: String = ""
    @State var semestre: String = ""
    
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    Group{
                        Text("Nome da disciplina")
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        TextField(" ", text: $nomeDisciplina)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.bottom)
                        
                        Text("Nota unidade 1")
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                   
                        TextField(" ", text: $nota1)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.bottom)
                            .keyboardType(.decimalPad)
                        
                    }
                    
                    Group{
                        
                        Text("Nota unidade 2")
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        TextField(" ", text: $nota2)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.bottom)
                            .keyboardType(.decimalPad)
                        
                        Text("Nota unidade 3")
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        TextField(" ", text: $nota3)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.bottom)
                            .keyboardType(.decimalPad)
                    }
                    
                    Group{
                        Text("Nota unidade 4")
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        TextField(" ", text: $nota4)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.bottom)
                            .keyboardType(.decimalPad)
                        
                        Text("Semestre corrente")
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        TextField(" ", text: $semestre)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.bottom, 10)
                            .keyboardType(.numberPad)
                        
                      Button(action: {
                          print("adicionado")
                          let disciplina = Disciplina(context: moc)
                          disciplina.id = UUID()
                          disciplina.nome = nomeDisciplina
                          disciplina.nota1 = nota1
                          disciplina.nota2 = nota2
                          disciplina.nota3 = nota3
                          disciplina.nota4 = nota4
                          disciplina.semestre = semestre
                                                    
                          do {
                              try moc.save()
                              print("Projeto Salvo")
                              
                              DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                                  presentationMode.wrappedValue.dismiss()
                              }
                              
                          } catch {
                              print(error.localizedDescription)
                          }
                          
                      }, label: {
                          botaoADD(cornerRadius: 5, alturaCard: 200)
                      })
                        
                    }
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.top, 20)
                
            }
            .navigationTitle("Nova disciplina")
            
        }
    }
}

struct NewDiscipline_Previews: PreviewProvider {
    static var previews: some View {
        NewDiscipline()
    }
}


struct botaoADD: View{
    
    @State var cornerRadius: CGFloat
    @State var alturaCard: CGFloat
    
    var body: some View{
        
        ZStack{
            RoundedRectangle(cornerRadius: cornerRadius)
                .frame(minWidth: 150, idealWidth: 150, maxWidth: .infinity, minHeight: 50, idealHeight: 50, maxHeight: alturaCard)
                .foregroundColor(.blue)
            
            Text("Adicionar disciplina")
                .font(.title3)
                .foregroundColor(.white)
                .bold()
        }
    }
}
