//
//  ScrollView.swift
//  SimpleCards
//
//  Created by Buse Karabıyık on 1.09.2023.
//

import UIKit

class ScrollView : UIScrollView {
    
    private var uiFunctions = UIFunctions()
    
    init(view: UIView, target: Any?, action: Selector?) {
        super.init(frame: .zero)
        setupViews(on: view, target: target, action: action)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews(on view: UIView, target: Any?, action: Selector?) {
        let stackView = uiFunctions.makeStackView()
            
            let buttonTitles = [
                "MOST USED 1000",
                "GREETINGS",
                "HOUSE",
                "TRAVELLING",
                "RESTAURANT",
                "RELATIONSHIPS",
                "HOSPITAL",
                "CLOTHES"
            ]
            
            for title in buttonTitles {
                let button = uiFunctions.makeButton(withTitle: title, withTitleSized: 20, withTitleFont: "Bold")
                stackView.addArrangedSubview(button)
                if let safeAction = action, let safeTarget = target {
                    button.addTarget(safeTarget, action: safeAction, for: .touchUpInside)
                }
                button.heightAnchor.constraint(equalToConstant: 60).isActive = true
            }
            
            addSubview(stackView)
        
            NSLayoutConstraint.activate([
                stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
                stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
                stackView.topAnchor.constraint(equalTo: self.topAnchor),
                stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
                stackView.widthAnchor.constraint(equalTo: self.widthAnchor, constant: -50),
                
            ])
        
    }
}
