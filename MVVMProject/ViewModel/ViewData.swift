//
//  ViewData.swift
//  MVVMProject
//
//  Created by Phillippi Areias Aguiar on 1/18/21.
//

import Foundation

protocol ViewDataType {
    var contact: [Contact] { get }
}
class ViewData {
    
    private let model: [Contact]
    
    init(model:[Contact]) {
        self.model = model
    }
}
extension ViewData: ViewDataType {
    var contact: [Contact] {
        return model
    }
}
