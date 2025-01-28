//
//  CategoriesView.swift
//  SimpleCards
//
//  Created by Buse Karabıyık on 1.09.2023.
//

import UIKit

struct CategoriesScreenView {
    
    private var uiFunctions = UIFunctions()
    
    
    internal func setupViews(on view: UIView, target: Any?, action: Selector?) {
        let scrollView = ScrollView(view: view , target: target, action: action)
        
        let label = uiFunctions.makeLabel(withText: "Choose a category!")
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
        view.addSubview(scrollView)
        
        NSLayoutConstraint.activate([
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 16),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -16),
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 13),
            
            scrollView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 35),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30)
        
        ])

        
    }

}

