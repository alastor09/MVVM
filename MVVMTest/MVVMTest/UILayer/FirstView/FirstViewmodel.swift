//
//  FirstViewmodel.swift
//  MVVMTest
//
//  Created by Soan Saini on 25/2/17.
//  Copyright © 2017 Soan Saini. All rights reserved.
//

import Foundation

class firstViewModel {
    var person: Person
    var name: String
    var dateOfBirth: String
    
    init(person: Person) {
        self.person = person
        self.name = "\(person.salutation) \(person.firstName) \(person.lastName)"
        self.dateOfBirth = { () -> String in
            return person.birthDate.firstViewDate()
        }()
    }
}

extension Date {
    func firstViewDate() -> String {
        let formatter = DateFormatter.initfirstViewDateFormatter()
        return formatter.string(from: self)
    }
}

extension DateFormatter {
    public class func initfirstViewDateFormatter() -> DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM d, yyyy"
        return formatter
    }
}
