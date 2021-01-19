//
//  ViewModel.swift
//  MVVMProject
//
//  Created by Phillippi Areias Aguiar on 1/16/21.
//

import Foundation

class ViewModel {

    //MARK: - Váriáveis
    
    private var contacts : [Contact] = []
    private let client: parseProtocol
    var viewData: Bindable<ViewData?> = Bindable(nil)
    
    init(client: parseProtocol = Parser()) {
        self.client = client
    }
    
    //MARK: - Métodos
    
    func loadMovie() {
        client.parse { (contact) in
            self.contacts = contact
            self.viewData.value = ViewData(model: contact)
        }
}
    func numberOfRows()-> Int {
        let count = contacts.count
        return count
    }
    
    func cellForRow() -> [Contact] {
        let object = contacts
        return object
    }
    
}

