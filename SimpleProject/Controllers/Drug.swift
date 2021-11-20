//
//  Drug.swift
//  SimpleProject
//
//  Created by Ekaterina Kugeneva on 20.11.2021.
//

import Foundation

struct Drug {
    let name: String
    let manufacturer: String
    let dosage: String
    let price: String
    let substance: String
    let description: String
}

extension Drug {
    static func getDrugsList() -> [Drug] {
        
        var drugs: [Drug] = []
        
        let names = DataManager.shared.names
        let manufacturers = DataManager.shared.manufacturers
        let dosages = DataManager.shared.dosages
        let prices = DataManager.shared.prices
        let substances = DataManager.shared.substances
        let descriptions = DataManager.shared.descriptions
        
        
        for index  in 0 ... names.count - 1 {
                    let medicine = Drug (name: names[index], manufacturer: manufacturers[index],
                                         dosage: dosages[index], price: prices[index], substance: substances[index],
                                         description: descriptions[index])
                    drugs.append(medicine)
                }
        
    
        return drugs
    }
}
