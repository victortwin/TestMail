//
//  VerificationModel.swift
//  TestMail
//
//  Created by Victor Tormyshev on 26.02.2024.
//

import Foundation

class VerificationModel {
    
    private let mailsArray = ["@gmail.com", "@yandex.ru", "@yahoo.com"]
    
    public var mailName = String()
    public var filteredMailArray = [String]()
    
    private func filteringMails(text: String) {
        
        var domainMail = String()
        filteredMailArray = []
        
        guard let firstIndex = text.firstIndex(of: "@") else { return }
        let endIndex = text.index(before: text.endIndex)
        let range = text[firstIndex...endIndex]
        domainMail = String(range)
        
        mailsArray.forEach { mail in
            if mail.contains(domainMail) {
                if !filteredMailArray.contains(domainMail) {
                    filteredMailArray.append(mail)
                }
            }
        }
    }
    
    private func deriveMailName(text: String) {
        guard let atSymbolIndex = text.firstIndex(of: "@") else { return }
        let endIndex = text.index(before: atSymbolIndex)
        let firstIndex = text.startIndex
        let range = text[firstIndex...endIndex]
        mailName = String(range)
    }
    
    public func getFilteredMail(text: String) {
        filteringMails(text: text)
    }
    
    public func getMailName(text: String) {
        deriveMailName(text: text)
    }
}
