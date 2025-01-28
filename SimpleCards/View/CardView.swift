//
//  cardView.swift
//  SimpleCards
//
//  Created by Buse Karabıyık on 1.09.2023.
//

import UIKit

class CardView : UIView {
    
    private var uiFunctions = UIFunctions()
    
    init() {
       super.init(frame: .zero)
       self.backgroundColor = UIColor(red: 0.56, green: 0.76, blue: 0.69, alpha: 1.00)
       setupViews(word: word)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews(word : String) {
        let label = uiFunctions.makeBigLabel(withText: word)
        label.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16)
        ])
        
    }
}
