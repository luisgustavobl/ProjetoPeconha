//
//  DetailView.swift
//  PeconhaProjeto
//
//  Created by Turma01-23 on 11/11/25.
//

import SwiftUI


struct DetailView: View {
    let musicvar: animais
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            ScrollView{
                VStack{
                    Text("Os resultados podem não estar corretos todo o tempo. Em caso de contato direto, dirija-se à unidade de saúde mais próxima.")
                        .padding()
                        .frame(width: 360,height: .infinity)
                        .background(Color(UIColor.systemRed).opacity(0.8))
                        .cornerRadius(20)
                        .padding()
                        .foregroundStyle(.white)
                    HStack{
                        AsyncImage(url: URL(string: musicvar.imagem ?? "")) { image in
                            image.resizable()
                        }   placeholder: {
                            ProgressView()
                                .tint(.gray)
                        }
                        .frame(width: 150, height: 150)
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 35))
                        .padding(.leading, 5)
                        .padding(.trailing,20)
                        VStack(alignment: .leading) {
                            Text(musicvar.nomePopular)
                                .foregroundStyle(.white)
                                .font(.title2)
                            
                            Text(musicvar.nomeCientifico)
                                .foregroundStyle(Color(.lightGray))
                                .font(.system(size:17))
                                .italic()
                        }
                        Spacer()

                    }
                        ZStack{
                            Color("CinzaPreto")
                                .ignoresSafeArea()
                                .frame(width: .infinity,height: .infinity)
                                
                            VStack{
                                HStack{
                                    Text("Nível de perigo")
                                        .padding()
                                        .frame(width: 200,height: .infinity)
                                        .background(.red.opacity(0.4))
                                        .cornerRadius(20)
                                        .font(.title3)
                                        .padding()
                                        .foregroundStyle(.white)
                                        .bold()
                                    ZStack{
                                        Text("5")
                                            .padding(.top)
                                            .cornerRadius(20)
                                            .padding()
                                            .foregroundStyle(.white)
                                            .bold()
                                            .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                                            .font(.system(size: 40))
                                        Image(systemName: "triangle.fill")
                                            .resizable()
                                            .frame(width: 100, height: 100)
                                            .foregroundStyle(.red)
                                            .padding()
                                    }
                                    /*                           Rectangle()
                                     .ignoresSafeArea()
                                     .frame(width: .infinity,height: .infinity)
                                     .foregroundStyle(.gray)*/
                                }
                            }
                    }
                }
            }
        }
    }
}



#Preview {
    DetailView(musicvar: animais(nomePopular: "cobracoral", nivelPericulosidade: "5", tempoMaximoAteMorte: "5", tempoRespostaPeconha: "5", nomeCientifico: "abacaxi", latitude: 52.3, longitude: 52.3, especie: "Cobra", imagem: "https://segredosdomundo.r7.com/wp-content/uploads/2021/02/cobra-coral-verdadeira-e-falsa-coral-entenda-as-diferencas.jpg"))
    }
