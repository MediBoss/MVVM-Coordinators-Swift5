//
//  ViewController.swift
//  MVVM-example
//
//  Created by Adriana González Martínez on 9/11/19.
//  Copyright © 2019 Adriana González Martínez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white

        let person = Person(firstName: "Adriana", lastName: "Gonzalez", birthDate: NSDate(), greeting: "Hello")
        
        let infoView = InfoView(frame: CGRect(x: 0, y: 0, width: 400, height: 200))
        infoView.center = self.view.center
        self.view.addSubview(infoView)
        
        if (person.greeting.count > 0) {
            infoView.nameLabel.text = "\(person.greeting) \(person.firstName) \(person.lastName)"
        } else {
            infoView.nameLabel.text = "\(person.firstName) \(person.lastName)"
        }
        
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "EEEE MMMM d, yyyy"
        infoView.birthDateLabel.text = dateformatter.string(from: person.birthDate as Date)
        
    }
}
