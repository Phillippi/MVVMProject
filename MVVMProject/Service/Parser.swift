//
//  Parse.swift
//  MVVMProject
//
//  Created by Phillippi Areias Aguiar on 1/16/21.
//

import Foundation

protocol parseProtocol {
    func parse(completion: @escaping ([Contact])-> ())
}

struct Parser: parseProtocol {
    func parse(completion: @escaping ([Contact])-> ()){
        let api = URL(string: "https://api.androidhive.info/contacts/")
        
        URLSession.shared.dataTask(with: api!) {
            data, response, error in
            if error != nil {
                print(error!.localizedDescription)
                return
            }
            do {
               let result = try JSONDecoder().decode(Usuario.self, from: data!)
                completion(result.contacts)
            }
            catch{
            }
        }.resume()
    }
}

