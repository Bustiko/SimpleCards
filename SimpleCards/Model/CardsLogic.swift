//
//  CardsLogic.swift
//  SimpleCards
//
//  Created by Buse Karabıyık on 3.09.2023.
//

import UIKit



struct CardsLogic {
    
    let dataLogic = DataLogic()
    var cardsScreenView: CardsScreenView?
    
    func prepareCards(completion: @escaping (String?, String?) -> Void) {
            switch currentCategory {
            case "MOST USED 1000":
                dataLogic.getRandomWords(from: "topWords") { (english, turkish) in
                    completion(english, turkish)
                }

            default:
                dataLogic.getRandomWords(from: currentCategory.lowercased()) { (english,turkish) in
                    completion(english, turkish)
                }
            }
        
    }
}
