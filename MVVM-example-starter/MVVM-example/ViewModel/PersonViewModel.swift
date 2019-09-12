//
//  PersonViewModel.swift
//  MVVM-example
//
//  Created by Medi Assumani on 9/11/19.
//  Copyright © 2019 Adriana González Martínez. All rights reserved.
//

import Foundation
import UIKit

class PersonViewModel {
    
    var person: Person
    
    init(withPerson person: Person) {
        self.person = person
    }
    
    func formatDate() -> String{
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "EEEE MMMM d, yyyy"
        return dateformatter.string(from: person.birthDate as Date)
    }
    
    func getMessage() -> String{
        
        return person.greeting.count > 0 ? "\(person.greeting) \(person.firstName) \(person.lastName)" : "\(person.firstName) \(person.lastName)"
    }
}
