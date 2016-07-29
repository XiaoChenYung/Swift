//
//  UCAddressBookManager.swift
//  UnicornChat
//
//  Created by Diana Huang on 5/17/16.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import Foundation
import Intents

class UCAddressBookManager {
    /*
    func addContact(contact: UCContact) {
        // Save contact to database
        // ...
    
        if contact.favorite {
            // provide the updated list of favorites' unicorn names to Siri
            DispatchQueue(label: "UCSiriVocabProviding").asynchronously(execute: { () -> Void in
                var unicornNames = [NSString]()
                for contact in self.orderedFavoriteContacts {
                    unicornNames.append(contact.unicornName as NSString)
                }
                INVocabulary .shared().setVocabularyStrings(OrderedSet(array: unicornNames), of: INVocabularyStringType.contactName)
            })
        }
    }*/
    
    func searchByName(_ name: String) -> [UCContact] {
        var results = [UCContact]()
        for contact in allContacts {
            if contact.name.lowercased().contains(name.lowercased()) {
                results.append(contact)
            }
        }
        return results
    }
    
    var favoriteContacts: [UCContact] {
        var favorites: [UCContact] = []
        for contact in allContacts {
            if contact.favorite {
                favorites.append(contact)
            }
        }
        return favorites
    }
    
    var orderedFavoriteContacts: [UCContact] {
        var contactedFavorites = [UCContact]()
        var uncontactedFavorites = [UCContact]()
        for contact in favoriteContacts {
            if contact.contactedBefore {
                contactedFavorites.append(contact)
            } else {
                uncontactedFavorites.append(contact)
            }
        }
        var orderedFavoritesArray = contactedFavorites
        orderedFavoritesArray.append(contentsOf: uncontactedFavorites)
        return orderedFavoritesArray
    }
    
    private var allContacts: [UCContact]
    
    init() {
        let BenP = UCContact(name: "Ben Phipps", unicornName: "Ripley")
        let BenB = UCContact(name: "Ben Brumbaugh", unicornName: "Grass Snowy Lord")
        let BenK = UCContact(name: "Ben Kuryk", unicornName: "Carrot Dapple Nose")
        
        let Scott = UCContact(name: "Scott Andrus", unicornName: "Robin Blue Rump")
        let Vineet = UCContact(name: "Vineet Khosla", unicornName: "Dandelion Fair Prince")
        let Diana = UCContact(name: "Diana Huang", unicornName: "Nightshade Pretty Bridle")
        allContacts = [BenB, BenK, BenP, Scott, Vineet, Diana]
    }
}
