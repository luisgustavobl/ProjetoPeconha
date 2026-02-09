//
//  File.swift
//  projeto final
//
//  Created by Turma01-20 on 11/11/25.
//

import Foundation

struct animais : Codable ,Hashable {
    var nomePopular: String
    var nivelPericulosidade: String
    var tempoMaximoAteMorte: String
    var tempoRespostaPeconha: String
    var nomeCientifico: String
    var latitude: Double
    var longitude: Double
    var especie: String
    var imagem : String?
}



class ViewModel: ObservableObject {
    @Published var especies1: [animais] = []
    func fetch() {
        guard let url = URL(string: "http://127.0.0.1:1880/leituraUnifor") else {
            print("teste1"); return
        }
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in guard let data = data, error == nil else{
            print("teste2"); return
        }
            do {
                print("teste3")
                let parsed = try JSONDecoder().decode([animais].self, from: data)
                DispatchQueue.main.async {
                    self?.especies1 = parsed
                }
            }
            
            catch {
                print(error)
            }
        }
        task.resume()
    }
}
