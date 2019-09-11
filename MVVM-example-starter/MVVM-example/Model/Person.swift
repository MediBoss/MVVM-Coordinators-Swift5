//
//  Person.swift
//  MVVM-example
//
//  Created by Adriana González Martínez on 9/11/19.
//  Copyright © 2019 Adriana González Martínez. All rights reserved.
//

import UIKit

class Person: NSObject {

    let firstName: String
    let lastName: String
    let birthDate: NSDate
    let greeting: String

    init(firstName: String, lastName: String, birthDate: NSDate, greeting: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthDate = birthDate
        self.greeting = greeting
    }
    
}
