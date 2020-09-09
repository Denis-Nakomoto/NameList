//
//  TabBarControllerViewController.swift
//  NameList
//
//  Created by Denis Svetlakov on 09.09.2020.
//  Copyright © 2020 Denis Svetlakov. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    var dataManager = DataManager()
    var persons: [Person] {
        dataManager.persons
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
