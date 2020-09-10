//
//  NamesInSectionsViewController.swift
//  NameList
//
//  Created by Denis Svetlakov on 08.09.2020.
//  Copyright © 2020 Denis Svetlakov. All rights reserved.
//

import UIKit

class NamesInSectionsViewController: UITableViewController {
    
    var persons: [Person]!
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let person = persons[indexPath.section]
        switch indexPath.row {
        case 0:
            cell.imageView?.image = UIImage(systemName: "phone")
            cell.textLabel?.text = person.phone
        default:
            cell.imageView?.image = UIImage(systemName: "envelope")
            cell.textLabel?.text = person.email
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section]
        return "\(person.name) \(person.surname)"
    }
}
