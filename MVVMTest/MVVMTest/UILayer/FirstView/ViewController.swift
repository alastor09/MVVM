//
//  ViewController.swift
//  MVVMTest
//
//  Created by Soan Saini on 25/2/17.
//  Copyright © 2017 Soan Saini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!

    let person = Person(firstName: "Soan", lastName: "Saini", birthDate: Date(), salutation: "Mr")
    
    var viewModel:firstViewModel?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.viewModel = firstViewModel(person: person)
        self.nameLabel.text = viewModel?.name
        self.dateLabel.text = viewModel?.dateOfBirth
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

