//
//  File.swift
//  AccessWindowApp
//
//  Created by Pavel Lazarev Macbook on 17.08.2022.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
}
   
    struct Person {
        let name: String
        let surname: String
        let fullAge: Double
        let education: String
        let cityOfResidence: String
    }
    
    
    extension Person {
    static func getUserData() -> User {
        User (login: "1",
              password: "1",
              person: Person(name: "Pavel",
                             surname: "Lazarev",
                             fullAge: 33,
                             education: "Higher",
                             cityOfResidence: "Moscow"))
    }
    }

