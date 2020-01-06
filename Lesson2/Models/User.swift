//
//  User.swift
//  Homework2
//
//  Created by Родион Кубышкин on 24/12/2019.
//  Copyright © 2019 Родион Кубышкин. All rights reserved.
//

import Foundation
import UIKit

struct User {
    
    var avatar: String
    var year: String
    var online: String
    var name: String
    var status: String
    var dateOfBirth: String
    var instagram: String
    var vk: String
    var company: String
    var school: String
    var university: String
    
    static let avatars = [
        "avatar",
        "avatar2",
        "avatar3"
    ]
    
    static let years = [
        "19 лет",
        "27 лет",
        "35 лет"
    ]
    
    static let onlines = [
        "online",
        "заходил два часа назад",
        "был в сети вчера"
    ]
    
    static let names = [
        "Родион Кубышкин",
        "Даниил Котов",
        "Андрей Болтун"
    ]
    
    static let statuses = [
        "Один за всех и все за одного.",
        "Семь раз отмерь, один раз отрежь.",
        "Волк не тигр – в цирке не выступает."
    ]
    
    static let dates = [
        "27 сентября",
        "20 октября",
        "15 января"
    ]
    
    static let instagrams = [
        "rodionkub",
        "dont.followme",
        "itiskfu"
    ]
    
    static let vks = [
        "rodionkub",
        "dont.followme",
        "itiskfu"
    ]
    
    static let companies = [
        "Microsoft",
        "Apple",
        "Yandex"
    ]
    
    static let schools = [
        "IT–лицей КФУ",
        "Лицей №35",
        "Гимназия №22"
    ]
    
    static let universities = [
        "МГУ",
        "КФУ",
        "КАИ"
    ]
    
    init() {
        self.avatar = ""
        self.year =  ""
        self.online = ""
        self.name = ""
        self.status = ""
        self.dateOfBirth = ""
        self.instagram = ""
        self.vk = ""
        self.company = ""
        self.school = ""
        self.university = ""
    }
    
    init(
        avatar: String,
        year: String,
        online: String,
        name: String,
        status: String,
        dateOfBirth: String,
        instagram: String,
        vk: String,
        company: String,
        school: String,
        university: String
    ) {
        self.avatar = avatar
        self.year = year
        self.online = online
        self.name = name
        self.status = status
        self.dateOfBirth = dateOfBirth
        self.instagram = instagram
        self.vk = vk
        self.company = company
        self.school = school
        self.university = university
    }
    
    func getRandomUser() -> User {
    guard
        let avatar = User.avatars.randomElement(),
        let year = User.years.randomElement(),
        let online = User.onlines.randomElement(),
        let name = User.names.randomElement(),
        let status = User.statuses.randomElement(),
        let dateOfBirth = User.dates.randomElement(),
        let instagram = User.instagrams.randomElement(),
        let vk = User.vks.randomElement(),
        let company = User.companies.randomElement(),
        let school = User.schools.randomElement(),
        let university = User.universities.randomElement()
        else {
            return User()
    }
    
    return User(avatar: avatar, year: year, online: online, name: name, status: status, dateOfBirth: dateOfBirth, instagram: instagram, vk: vk, company: company, school: school, university: university)
    }
}
