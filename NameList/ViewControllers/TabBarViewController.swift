//
//  TabBarControllerViewController.swift
//  NameList
//
//  Created by Denis Svetlakov on 09.09.2020.
//  Copyright © 2020 Denis Svetlakov. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    var persons = Person.getContactList()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(with: persons)
    }
    
    private func setupViewControllers(with persons: [Person]) {
        let namesListVC = viewControllers?.first as! NamesListViewController
        let sectionVC = viewControllers?.last as! NamesInSectionsViewController
        
        namesListVC.persons = persons
        sectionVC.persons = persons
    }
}
