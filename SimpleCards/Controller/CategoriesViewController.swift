//
//  ViewController.swift
//  SimpleCards
//
//  Created by Buse Karabıyık on 31.08.2023.
//

import UIKit

class CategoriesViewController: UIViewController {
    
    private var uiFunctions = CategoriesScreenView()
    private let destionationVC = CardsViewController()
    private var cardsLogic = CardsLogic()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 1.00, green: 0.98, blue: 0.91, alpha: 1.00)
        uiFunctions.setupViews(on: view, target: self, action: #selector(buttonPressed))
        
    }
    
    @objc func buttonPressed(_ sender: UIButton?) {
        currentCategory = sender!.titleLabel!.text!
        cardsLogic.prepareCards { [self] englishWord, turkishWord  in
            if let englishWord = englishWord, let turkishWord = turkishWord {
                word = englishWord
                myEnglishWord = englishWord
                myTurkishWord = turkishWord
                
                destionationVC.modalPresentationStyle = .fullScreen
                self.present(destionationVC, animated: true)
            } else {
                print("English word is empty or nil")
            }
        }
    }

}

