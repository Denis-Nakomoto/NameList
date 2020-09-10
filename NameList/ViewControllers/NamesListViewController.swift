//
//  NamesListViewController.swift
//  NameList
//
//  Created by Denis Svetlakov on 08.09.2020.
//  Copyright © 2020 Denis Svetlakov. All rights reserved.
//

import UIKit

class NamesListViewController: UITableViewController {
    
    var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.navigationItem.title = "Contacts"
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let person = persons[indexPath.row]
        cell.textLabel?.text = person.fullName
        navigationItem.title = person.fullName
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailVC.details = persons[indexPath.row]
        detailVC.navigationItem.title = persons[indexPath.row].fullName
    }
}
