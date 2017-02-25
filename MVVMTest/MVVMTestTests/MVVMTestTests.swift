//
//  MVVMTestTests.swift
//  MVVMTestTests
//
//  Created by Soan Saini on 25/2/17.
//  Copyright © 2017 Soan Saini. All rights reserved.
//

import XCTest
@testable import MVVMTest

class MVVMTestTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let todayDate = Date()
        let dummyPerson = Person(firstName: "Soan", lastName: "Saini", birthDate: todayDate, salutation: "Mr")
        XCTAssertEqual(dummyPerson.lastName,"Saini")
        
        let dummyModel = FirstViewModel(person: dummyPerson)
        XCTAssertEqual(dummyModel.name,"Mr Soan Saini")
        
        XCTAssertEqual(dummyModel.dateOfBirth,todayDate.firstViewDate())
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
