//
//  CardsScreenView.swift
//  SimpleCards
//
//  Created by Buse Karabıyık on 1.09.2023.
//

import UIKit

struct CardsScreenView {
    
    
    private var uiFunctions = UIFunctions()
    private var buttons : [UIButton] = []
    
    
    internal mutating func setupViews(on view : UIView, target : Any?, action : Selector?, backAction : Selector?) {
        
        let buttonTitles = [
            "Next Card",
            "Flip the Card"
        ]
        
        let backButton = uiFunctions.makeButton(withTitle: "Go Back to Categories", withTitleSized: 15, withTitleFont: "Regular")
        if let safeBackAction = backAction {
            backButton.addTarget(target, action: safeBackAction, for: .touchUpInside)
        }
        
        
        view.addSubview(backButton)

        
        NSLayoutConstraint.activate([
           backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
           backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
        ])
        
        
        
        
        for title in buttonTitles {
            let button = uiFunctions.makeButton(withTitle: title, withTitleSized: 20, withTitleFont: "Regular")
            buttons.append(button)
            view.addSubview(button)
        }
           
        for i in 0..<buttons.count {
            if let safeAction = action {
                buttons[i].addTarget(target, action: safeAction, for: .touchUpInside)
            }
            buttons[i].heightAnchor.constraint(lessThanOrEqualToConstant: 60).isActive = true
            buttons[i].leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
            buttons[i].trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
            if i == 0 {
                buttons[i].topAnchor.constraint(equalTo: view.topAnchor, constant: 520).isActive = true
            }else {
                buttons[i].topAnchor.constraint(equalTo: buttons[i-1].bottomAnchor, constant: 23).isActive = true
            }
        }
        
    }
    
    
}
