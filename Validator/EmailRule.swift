//
//  EmailValidation.swift
//  Pingo
//
//  Created by Jeff Potter on 11/11/14.
//  Copyright (c) 2015 jpotts18. All rights reserved.
//

import Foundation

class EmailRule: Rule {
    
    private let REGEX: String = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
    
    init(){}
    
    init(regex: String){
        REGEX = regex
    }
    
    func validate(value: String) -> Bool {
        return NSPredicate(format: "SELF MATCHES %@", self.REGEX).evaluateWithObject(value)
    }
    
    func errorMessage() -> String {
        return "Must be a valid email address"
    }
}