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

    var viewModel:FirstViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.viewModel = FirstViewModel(person: person)
        self.nameLabel.text = viewModel?.name
        self.dateLabel.text = viewModel?.dateOfBirth
    }
}
