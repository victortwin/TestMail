//
//  MailCollectionViewCell.swift
//  TestMail
//
//  Created by Victor Tormyshev on 24.02.2024.
//

import UIKit

class MailCollectionViewCell: UICollectionViewCell {
    
    private let domainLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont(name: "Apple SD Gothic Neo", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        contentView.backgroundColor = .white
        contentView.alpha = 0.5
        contentView.layer.cornerRadius = 10
        
        addSubview(domainLabel)
    }
    
    private func configure(mailLabelText: String) {
        domainLabel.text = mailLabelText
    }
    
    public func cellConfigure(mailLabeltext: String) {
        configure(mailLabelText: mailLabeltext)
    }
}

extension MailCollectionViewCell {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            domainLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            domainLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
