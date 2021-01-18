//
//  Usuario.swift
//  MVVMProject
//
//  Created by Phillippi Areias Aguiar on 1/16/21.
//

import Foundation

struct Usuario: Codable {
    let contacts: [Contact]
}
struct Contact: Codable {
    let id: String
    let name: String
    let email: String
}
