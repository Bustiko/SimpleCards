//
//  CardsViewController.swift
//  SimpleCards
//
//  Created by Buse Karabıyık on 2.09.2023.
//

import UIKit
import FirebaseCore
import FirebaseFirestore

class CardsViewController : UIViewController {
    
    private var uiFunctions = CardsScreenView()
    private let dataLogic = DataLogic()
    private var cardsLogic = CardsLogic()
    var card = CardView()
//    private var oneTimeFBSave = OneTimeFBSave()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 1.00, green: 0.98, blue: 0.91, alpha: 1.00)
       uiFunctions.setupViews(on: view, target: self, action: #selector(buttonPressed), backAction: #selector(backPressed))
//        oneTimeFBSave.saveData()
        card = CardView()
        setupCardView(card: card)
        
    }
    
    
    @objc func buttonPressed(_ sender : UIButton?) {
        if sender?.titleLabel?.text == "Next Card" {
            cardsLogic.prepareCards { [self] englishWord, turkishWord in
                if let englishWord = englishWord, let turkishWord = turkishWord {
                    card.removeFromSuperview()
                    myEnglishWord = englishWord
                    word = myEnglishWord
                    myTurkishWord = turkishWord
                    
                    card = CardView()
                    setupCardView(card: card)
                    
                } else {
                    print("English word is empty or nil")
                }
            }
        } else {
            if word == myTurkishWord {
                word = myEnglishWord
            }else {
                word = myTurkishWord
            }
            
            card = CardView()
            setupCardView(card: card)
        }
        
    }
    
    @objc func backPressed() {
        self.dismiss(animated: true)
    }
    
    
    func setupCardView(card : CardView) {
        card.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(card)
        
        NSLayoutConstraint.activate([
           card.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
           card.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
           card.heightAnchor.constraint(equalToConstant: 276),
           card.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 145)
        ])
    }
    
}
    
   

