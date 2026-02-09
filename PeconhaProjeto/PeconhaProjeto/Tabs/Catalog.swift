//
//  Catalog.swift
//  PeconhaProjeto
//
//  Created by Turma01-23 on 11/11/25.
//

import SwiftUI

/*struct Music: Identifiable {
    var id: Int
    var name: String
    var nomeCientifico: String
    var imagem: String
}
var arrayMusic = [
    Music(id: 1, name: "Cobra-coral", nomeCientifico: "Micrurus corallinus", imagem: "https://segredosdomundo.r7.com/wp-content/uploads/2021/02/cobra-coral-verdadeira-e-falsa-coral-entenda-as-diferencas.jpg"), Music(id: 2, name: "Escorpião-amarelo", nomeCientifico: "Tityus serrulatus", imagem: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ6jgcTII1nqBLtikA5kLn3RYmPdO7U1obEFJUAuyJVtwaEvcZJQNbXCm9tNAO3aockZHLIaoiuSkre37QT3UaOS5Vw77Q3zirOZVW8fc&s=10"), Music(id: 3, name: "Viúva-negra", nomeCientifico: "Latrodectus curacaviensis", imagem: "https://static.nationalgeographicbrasil.com/files/styles/image_3200/public/nationalgeographic_1976521.jpg?w=1900&h=1265"), Music(id: 4, name: "Aranha marrom", nomeCientifico: "Loxosceles spp", imagem: "https://static.mundoeducacao.uol.com.br/mundoeducacao/2023/05/1-aranha-marrom.jpg"), Music(id: 5, name: "Jararaca", nomeCientifico: "Bothrops jararaca", imagem: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjqTci6vnwS86PJeA0Ty0nRSSo6dydpeufXWot3DU2l79UMWCpmTcCXCxPlrnCFWW1pMvKVfkgkUmwr83yprQUZ9KpYlmNtP_UUVCwsA&s=10"), Music(id: 6, name: "Test 9", nomeCientifico: "test", imagem: " ")
]
*/

/*struct animais : Codable ,Hashable {
    
    var nomePopular: String
    var nivelPericulosidade: String
    var tempoMaximoAteMorte: String
    var tempoRespostaPeconha: String
    var nomeCientifico: String
    var latitude: Double
    var longitude: Double
    var especie: String
    var imagem : String?
}*/



struct Catalog: View {
    @State var textInput = ""
    @FocusState private var isFocused: Bool
    
    @State var animalRecebido: String = ""
    
    @State var voar: String = ""
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack{
            ZStack{
                let blackBG = Color(.black)
                    .ignoresSafeArea()
                blackBG
                ScrollView{
                    VStack{
                        Text("Os resultados podem não estar corretos todo o tempo. Em caso de contato direto, dirija-se à unidade de saúde mais próxima.")
                            .padding()
                            .frame(width: 360,height: .infinity)
                            .background(Color(UIColor.systemRed).opacity(0.8))
                            .cornerRadius(20)
                            .padding()
                            .foregroundStyle(.white)
                        ZStack{
                            RoundedRectangle(cornerRadius: 35)
                                .frame(width: 360,height: .infinity)
                                .foregroundStyle(Color(.systemGray5))
                            TextField("Pesquisar espécies", text: $textInput)
                                .focused($isFocused)
                                .multilineTextAlignment(.center)
                                .padding()
                                .disableAutocorrection(true)
                                .foregroundStyle(.black)
                                .zIndex(1)
                            }
                        Text("Espécies Notáveis")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(.white)
                            .bold()
                        ForEach(viewModel.especies1, id: \.self) { i in NavigationLink(destination: DetailView(musicvar: i)) {
                            HStack {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 35)
                                        .frame(width: 109,height: 109)
                                        .padding(.leading, 5)
                                        .foregroundStyle(.red)
                                        .zIndex(0)
                                    RoundedRectangle(cornerRadius: 35)
                                        .frame(width: 104,height: 104)
                                        .padding(.leading, 5)
                                        .foregroundStyle(.black)
                                        .zIndex(2)
                                    AsyncImage(url: URL(string: i.imagem ?? "")) { image in
                                        image.resizable()
                                    }   placeholder: {
                                        ProgressView()
                                            .tint(.white)
                                    }
                                    .frame(width: 100, height: 100)
                                    .foregroundStyle(.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 32))
                                    .padding(.leading, 5)
                                    .zIndex(3)
                                }
                                VStack(alignment: .leading) {
                                    Text(i.nomePopular)
                                        .foregroundStyle(.white)
                                        .font(.title2)
                                    
                                    Text(i.nomeCientifico)
                                        .foregroundStyle(Color(.lightGray))
                                        .font(.system(size:17))
                                        .italic()
                                }
                                Spacer()
                                Image(systemName: "ellipsis")
                                    .foregroundStyle(Color(.systemGray5))
                                    .padding()
                            }
                        }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Catalog()
}
