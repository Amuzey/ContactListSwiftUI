//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Алексей on 23.09.2022.
//

import Foundation

struct Person {
    
    let name: String
    let surname: String
    let email: String
    let number: String
    
    var fullName: String {
        name + " " + surname
    }
    
    static func getContact() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let numbers = DataManager.shared.phoneNumbers.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            numbers.count
            )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                number: numbers[index]
            )
            persons.append(person)
        }
            
            
        return persons
    }
}
