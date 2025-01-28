//
//  UIFunctions.swift
//  SimpleCards
//
//  Created by Buse Karabıyık on 1.09.2023.
//

import UIKit

struct UIFunctions {
    
    internal func makeLabel(withText text : String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 0.56, green: 0.76, blue: 0.69, alpha: 1.00)
        label.font = UIFont(name: "ChalkboardSE-Regular", size: 25)
        label.textAlignment = .center
        
        return label
    }
    
    internal func makeBigLabel(withText text : String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 1.00, green: 0.98, blue: 0.91, alpha: 1.00)
        label.font = UIFont(name: "ChalkboardSE-Bold", size: 50)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
//        label.minimumScaleFactor = 0.5
        
        return label
    }
    
    internal func makeButton(withTitle text : String, withTitleSized size : CGFloat, withTitleFont font : String) -> UIButton {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false

        
        var config = UIButton.Configuration.filled()
        var container = AttributeContainer()
        container.font = UIFont(name: "ChalkboardSE-\(font)", size: size)
        config.attributedTitle = AttributedString(text, attributes: container)
        config.cornerStyle = .capsule
        config.contentInsets = NSDirectionalEdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16)
        config.baseBackgroundColor = UIColor(red: 0.56, green: 0.76, blue: 0.69, alpha: 1.00)
        config.baseForegroundColor = UIColor(red: 1.00, green: 0.98, blue: 0.91, alpha: 1.00)

        button.configuration = config
        
        
        return button
    }
    
    internal func makeStackView() -> UIStackView {
        let view = UIStackView()

        view.axis = .vertical
        view.spacing = 45

        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    

    
    
}
