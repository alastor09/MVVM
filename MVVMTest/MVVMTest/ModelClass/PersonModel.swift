//
//  PersonModel.swift
//  MVVMTest
//
//  Created by Soan Saini on 25/2/17.
//  Copyright © 2017 Soan Saini. All rights reserved.
//

import Foundation

class Person {
    var firstName: String
    var lastName: String
    var birthDate: Date
    var salutation: String
    
    init(firstName:String, lastName:String, birthDate:Date, salutation:String) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthDate = birthDate
        self.salutation = salutation
    }
}
