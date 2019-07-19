//
//  Person.swift
//  Cricstar
//
//  Created by Gurwinder on 2019-07-19.
//  Copyright © 2019 Parag Garg. All rights reserved.
//

import Foundation

class Person : Display
{
    var personId : Int
    var personName : String
    var personGender : Gender
    var personSponsor : String
    
    init()
    {
        self.personId = Int()
        self.personName = String()
        self.personGender = Gender.None
        self.personSponsor = String()
    }
    func display()
    {
        print( "personId : \(personId)"+"\npersonName : \(personName)"+"\npersonGender : \(personGender)"+"\npersonSponsor : \(personSponsor)\n")
    }
}
