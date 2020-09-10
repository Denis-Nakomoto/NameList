//
//  DataManager.swift
//  NameList
//
//  Created by Denis Svetlakov on 08.09.2020.
//  Copyright © 2020 Denis Svetlakov. All rights reserved.
//

import Foundation

class DataManager {
    let names = [
        "John", "Bill", "Quentin", "Huan", "Pedro",
        "Momo", "Nicolas", "Anna", "Elsa", "Sophie"
        ].shuffled()
    let surnames = [
        "Dow", "Klinton", "Torantino", "Pitt", "Trump",
        "Guetto", "Efimov", "Timberlake", "Jolie", "Karabas"
        ].shuffled()
    let emails = [
        "ron@low.com", "iop@.pop.ru", "jedi@google.com", "the@last.co", "finn@rider.com",
        "uncle@bance.com", "tim@cook.ru", "qwerty@azerty.fr", "john@sina.net", "darth@vader.imp"
        ].shuffled()
    let phones = [
        "987524523", "90832942398", "89475434534", "9249857", "843658735",
        "3533635464", "453566788", "1234567890", "22223334", "5464565775"
        ].shuffled()
}
