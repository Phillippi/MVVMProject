//
//  MVVMProjectTests.swift
//  MVVMProjectTests
//
//  Created by Phillippi Areias Aguiar on 1/18/21.
//

import XCTest
@testable import MVVMProject

class MVVMProjectTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPerformanceExample() throws {
            // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    func testUsuario() {
        
        let contact = Contact(id: "0", name: "Test", email: "user@user.com")
        XCTAssertEqual(contact.name, "Test")
        XCTAssertEqual(contact.id, "0")
        XCTAssertEqual(contact.email, "user@user.com")
        XCTAssertNotNil(contact)
    }
    func testViewModel() {
        var contacts : [Contact] = []
        let client: parseProtocol
        var viewData: Bindable<ViewData?> = Bindable(nil)
        
        func loadMovie() {
            client.parse { (contact) in
                contacts = contact
                viewData.value = ViewData(model: contact)
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
            
        XCTAssertNotNil(viewData)
        XCTAssertNotNil(contacts)
        XCTAssertNotNil(cellForRow())
    }
}
    
