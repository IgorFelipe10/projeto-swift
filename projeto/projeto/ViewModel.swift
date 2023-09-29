//
//  ViewModel.swift
//  projeto
//
//  Created by Student11 on 27/09/23.
//

import Foundation
struct Animal: Identifiable, Decodable {
    let id  : Int?
    let nome: String?
    let nomec: String?
    let local: String?
    let dieta: String?
    let cor: String?
    let peso: String?
    let altura: String?
    let tempovida: String?
    let populacao: String?
    let periodo: String?
    let url: String?
}



class ViewModel : ObservableObject {
    
    @Published var animals: [Animal] = []
    
    func fetchDataFromAPI() {
        guard let url = URL(string: "http://192.168.128.244:1880/abidleREAD") else {
            return
        }
        
        let task =  URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            
            guard let data = data, error == nil else {return}
            
            do{
                let animals = try JSONDecoder().decode([Animal].self, from: data)
               
                DispatchQueue.main.async {
                    self?.animals = animals
                }
                
            } catch {
                print(error)
            }
        }
        task.resume()
    }
    
    
}

