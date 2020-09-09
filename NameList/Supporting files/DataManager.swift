//
//  DataManager.swift
//  NameList
//
//  Created by Denis Svetlakov on 08.09.2020.
//  Copyright © 2020 Denis Svetlakov. All rights reserved.
//

import Foundation

class DataManager {
    var names = [
        "John", "Bill", "Quentin", "Huan", "Pedro",
        "Momo", "Nicolas", "Anna", "Elsa", "Sophie"
        ].shuffled()
    var surnames = [
        "Dow", "Klinton", "Torantino", "Pitt", "Trump",
        "Guetto", "Efimov", "Timberlake", "Jolie", "Karabas"
        ].shuffled()
    var emails = [
        "ron@low.com", "iop@.pop.ru", "jedi@google.com", "the@last.co", "finn@rider.com",
        "uncle@bance.com", "tim@cook.ru", "qwerty@azerty.fr", "john@sina.net", "darth@vader.imp"
        ].shuffled()
    var telephones = [
        "987524523", "90832942398", "89475434534", "9249857", "843658735",
        "3533635464", "453566788", "1234567890", "22223334", "5464565775"
        ].shuffled()
    
    var persons: [Person] {
        getPersons(names, surnames, emails, telephones).map {
            Person(name: $0[0], surname: $0[1], email: $0[2], phone: $0[3])
        }
    }
    
    func getPersons(_ sequences:[String]...) -> [[String]] {
        let count = sequences.map{$0.count}.min() ?? 0
        return (0..<count).map{ index in sequences.map{ $0[index] } }
    }
    
}
