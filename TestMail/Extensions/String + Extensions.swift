//
//  String + Extensions.swift
//  TestMail
//
//  Created by Victor Tormyshev on 26.02.2024.
//

import Foundation

extension String {
    func isValid() -> Bool {
        
        let format = "SELF MATCHES %@"
        let regEx = "[a-zA-Z0-9._]+@[a-zA-Z]+\\.[a-zA-Z]{2,}"
        return NSPredicate(format: format, regEx).evaluate(with: self)
    }
}
