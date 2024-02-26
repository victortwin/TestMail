//
//  StatusLabel.swift
//  TestMail
//
//  Created by Victor Tormyshev on 24.02.2024.
//

import UIKit

class StatusLabel: UILabel {
    
    public var isValid = false {
        didSet {
            if self.isValid {
                setValidSetting()
            } else {
                setNotValidSetting()
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        text = "Check your mail"
        textColor = #colorLiteral(red: 0.9564198852, green: 0.9451850057, blue: 0.889208734, alpha: 1)
        font = UIFont(name: "Apple SD Gothic Neo", size: 16)
        adjustsFontSizeToFitWidth = true
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setNotValidSetting() {
        text = "Mail is not Valid. Example: name@domain.ru"
        textColor = #colorLiteral(red: 0.5215686275, green: 0.1098039216, blue: 0.05098039216, alpha: 1)
    }
    
    private func setValidSetting() {
        text = "Mail is Valid."
        textColor = #colorLiteral(red: 0.1960784314, green: 0.3411764706, blue: 0.1019607843, alpha: 1)
    }
    
    public func setDefaultSettings() {
        configure()
    }
}
