//
//  DataLogic.swift
//  SimpleCards
//
//  Created by Buse Karabıyık on 3.09.2023.
//

import Foundation
import FirebaseCore
import FirebaseFirestore


struct DataLogic {
    let db = Firestore.firestore()
    

    func fetchRandomWord(from collection: String, completion: @escaping (String, String) -> Void) {
        db.collection(collection).getDocuments() { (querySnapshot, err) in
            if let error = err {
                print("Error fetching documents: \(error)")
            } else {
                if let documents = querySnapshot?.documents {
                    let randomIndex = Int.random(in: 0..<documents.count)
                    let randomDocument = documents[randomIndex]

                    if let randomEnglishWord = randomDocument.data()["english"] as? String,
                       let turkishMeaning = randomDocument.data()["turkish"] as? String {
//                        print("Random English Word: \(randomEnglishWord), its meaning: \(turkishMeaning)")
                        completion(randomEnglishWord, turkishMeaning)
                    } else {
                        print("No word found in the random document.")
                    }
                } else {
                    print("No documents found in the collection.")
                }
            }
        }
    }
    
    func getRandomWords(from collection: String, completion: @escaping (String, String) -> Void) {
            fetchRandomWord(from: collection) { (english, turkish) in
                completion(english, turkish)
            }
        }
}
