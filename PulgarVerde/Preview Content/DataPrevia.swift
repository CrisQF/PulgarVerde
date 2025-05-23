//
//  DataPrevia.swift
//  PulgarVerde
//
//  Created by user275933 on 5/22/25.
//

import Foundation

struct DataPrevia {
    
    static func cargarVegetales() -> [Vegetal] {
        
        guard let url = Bundle.main.url(forResource: "vegetales", withExtension: "json") else {
            return []
        }
        
        do {
            let data = try Data(contentsOf: url)
            let vegetales = try JSONDecoder().decode([Vegetal].self, from: data)
            return vegetales
        } catch {
            return []
        }
        
    }
}
