//
//  LineView.swift
//  WhatsApp
//
//  Created by Евгений Березенцев on 30.05.2022.
//

import UIKit

class LineView: UICollectionReusableView {
    
    static let reuseIdentifier = "LineView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .lightGray
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setColor(_ color: UIColor) {
        backgroundColor = color
    }
    
}
