//
//  Users.swift
//  NameList
//
//  Created by Denis Svetlakov on 08.09.2020.
//  Copyright © 2020 Denis Svetlakov. All rights reserved.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    var fullName: String{
        "\(name) \(surname)"
    }
}

extension Person {
    
    static func getContactList() -> [Person] {
        let dataSource = DataManager()
        var persons: [Person] = []
        for item in 0...dataSource.names.count - 1 {
            persons.append(Person(name: dataSource.names[item],
                                  surname: dataSource.surnames[item],
                                  email: dataSource.emails[item],
                                  phone: dataSource.phones[item]))
        }
        return persons
    }
}
