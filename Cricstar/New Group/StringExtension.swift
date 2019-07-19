//
//  StringExtension.swift
//  Cricstar
//
//  Created by Gurwinder on 2019-07-19.
//  Copyright © 2019 Parag Garg. All rights reserved.
//

import Foundation
extension String
{
    /*
     var isValidEmail:Bool {
     let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
     
     let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
     return emailTest.evaluate(with: self)
     }
     */
    
    
    
    
    func  isVAlidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    func isValidMobile() -> Bool
    {
        let mobileRegEx = "^[1{1}]\\s\\d{3}-\\d{3}-\\d{4}$"
        let mobileTest = NSPredicate(format:"SELF MATCHES %@", mobileRegEx)
        return mobileTest.evaluate(with: self)
    }
    
    
    func sizeCheck() -> Bool{
        if self.count < 6 {
            print("Size of password must be equal or greater than 6")
            return false
        }
        return true
}
}
