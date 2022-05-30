//
//  HeaderView.swift
//  WhatsApp
//
//  Created by Евгений Березенцев on 30.05.2022.
//

import UIKit

class HeaderView: UICollectionReusableView {
    
    let leftButton: UIButton = {
        let button = UIButton()
        button.setTitle("Broadcast Lists", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        button.setTitleColor(.systemBlue, for: .normal)

        button.contentHorizontalAlignment = .leading
        return button
    }()
    
    let rightButton: UIButton = {
        let button = UIButton()
        button.setTitle("New Group", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        button.setTitleColor(.systemBlue, for: .normal)
        button.setContentHuggingPriority(.required, for: .horizontal)
        return button
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fill
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        stackView.addArrangedSubview(leftButton)
        stackView.addArrangedSubview(rightButton)
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            stackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
    }
}
