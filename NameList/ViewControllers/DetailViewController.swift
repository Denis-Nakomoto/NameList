//
//  DetailViewController.swift
//  NameList
//
//  Created by Denis Svetlakov on 08.09.2020.
//  Copyright © 2020 Denis Svetlakov. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var telephoneLabel: UILabel!
    
    var details: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailLabel.text = "E-mail: \(details.email)"
        telephoneLabel.text = "Phone: \(details.phone)"
    }
}
