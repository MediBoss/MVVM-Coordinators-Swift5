//
//  ViewController.swift
//  MVVM-example
//
//  Created by Adriana González Martínez on 9/11/19.
//  Copyright © 2019 Adriana González Martínez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var personViewModel: PersonViewModel!
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        let person = Person(firstName: "Adriana", lastName: "Gonzalez", birthDate: NSDate(), greeting: "Hello")
        let infoView = InfoView(frame: CGRect(x: 0, y: 0, width: 400, height: 200))
        infoView.center = self.view.center
        self.view.addSubview(infoView)

        personViewModel = PersonViewModel(withPerson: person)
        personViewModel.formatDate()
        
        infoView.nameLabel.text = personViewModel.getMessage()
        infoView.birthDateLabel.text = personViewModel.formatDate()

        
    }
}
